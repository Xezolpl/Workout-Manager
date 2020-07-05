import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:workout_manager/presentation/pages/widgets/bottom_nav_bar.dart';
import 'package:workout_manager/presentation/pages/workout/workout_page.dart';

import 'account/account_page.dart';
import 'exercises_overview/exercises_overview_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<BottomNavigationBloc>();
    
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      bloc: bloc,
      builder: (BuildContext context, BottomNavigationState state) {
        final navBar = MainBottomNavBar(bloc);
        if (state is ExercisesPageS) {
          return ExercisesPage(bNavBar: navBar);
        } else if (state is WorkoutPageS) {
          return WorkoutPage(bNavBar: navBar, exercise: state.exercise);
        } else {
          return AccountPage(bNavBar: navBar,);
        }
      },
    );
  }
}
