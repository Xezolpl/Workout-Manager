import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';

class MainBottomNavBar extends StatelessWidget {
  MainBottomNavBar({Key key}) : super(key: key);

  BottomNavigationBloc bloc;

  @override
  Widget build(BuildContext context) {
    bloc = context.bloc<BottomNavigationBloc>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 6),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          onTap: (int index) => changePage(index),
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
  }

  void changePage(int index, {Exercise exercise}) =>
      bloc..add(BottomNavigationEvent.pageChanged(index, exercise: exercise));
}
