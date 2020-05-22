import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';

BlocBuilder getBottomNavBar(BottomNavigationBloc bloc) {
  return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      bloc: bloc,
      builder: (BuildContext context, BottomNavigationState state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              onTap: (int index) =>
                  bloc.add(BottomNavigationEvent.pageChanged(index)),
              currentIndex: bloc.currentIndex,
              items: [
                BottomNavigationBarItem(
                    title: Text('Exercises'), icon: Icon(Icons.directions_run)),
                BottomNavigationBarItem(
                    title: Text('Workout'), icon: Icon(Icons.fitness_center)),
                BottomNavigationBarItem(
                    title: Text('Account'), icon: Icon(Icons.assignment_ind)),
              ],
            ),
          ),
        );
      });
}
