import 'package:flutter/material.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar(this.bloc, {Key key}) : super(key: key);

  final BottomNavigationBloc bloc;

  @override
  Widget build(BuildContext context) {
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
      bloc..add(BottomNavigationEvent.pageChanged(exercise!=null ? index : index, exercise: exercise));
}
