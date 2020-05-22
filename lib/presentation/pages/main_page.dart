import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/repositories/exercises_repository.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:workout_manager/presentation/pages/widgets/bottom_nav_bar.dart';

import 'exercises_overview/exercises_overview_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<BottomNavigationBloc>();

    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      bloc: bloc,
      builder: (BuildContext context, BottomNavigationState state) {
        final Widget navBar = getBottomNavBar(bloc);
        if (state is ExercisesPageS) {
          return ExercisesPage(getIt<IExercisesRepository>(), navBar);
        } else if (state is WorkoutPageS) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Workout'),
            ),
            body: Container(child: Text('Workout')),
            bottomNavigationBar: navBar,
          );
        } else if (state is AccountPageS) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Account'),
            ),
            body: Container(child: Text('Account')),
            bottomNavigationBar: navBar,
          );
        }
      },
    );
  }
}
