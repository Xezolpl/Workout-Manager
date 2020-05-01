import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/presentation/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:workout_manager/presentation/bottom_navigation/widgets/bottom_nav_bar.dart';

import '../../injection.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final bloc = getIt<BottomNavigationBloc>();

    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        bloc: bloc,
        builder: (BuildContext context, BottomNavigationState state){
          if(state is ExercisesPage){
            return Container(child: Text('Exercises'));
          }else if(state is WorkoutPage){
            return Container(child: Text('Workout'));
          }else if(state is AccountPage){
            return Container(child: Text('Account'));
          }
        },
      ),
      bottomNavigationBar: getBottomNavBar(bloc),
    );
  }
}