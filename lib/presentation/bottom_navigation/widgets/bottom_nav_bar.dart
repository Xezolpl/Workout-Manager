import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bottom_navigation/bloc/bottom_navigation_bloc.dart';

BlocBuilder getBottomNavBar(BottomNavigationBloc bloc) {
  return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      bloc: bloc,
      builder: (BuildContext context, BottomNavigationState state) {
        return BottomNavigationBar(
          onTap: (int index) => bloc.add(BottomNavigationEvent.pageChanged(index)),
          currentIndex: bloc.currentIndex,
          items: [
            BottomNavigationBarItem(
                title: Text('Exercises'), icon: Icon(Icons.directions_run)),
            BottomNavigationBarItem(
                title: Text('Workout'), icon: Icon(Icons.fitness_center)),
            BottomNavigationBarItem(
                title: Text('Account'), icon: Icon(Icons.assignment_ind)),
          ],
        );
      });
}
