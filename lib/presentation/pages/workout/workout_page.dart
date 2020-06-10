import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/domain/repositories/workout_repository.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/workouts/workouts_bloc.dart';
import 'package:workout_manager/presentation/pages/exercises_overview/exercise_party_widget.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class WorkoutPage extends StatelessWidget {
  final Widget bNavBar;

  const WorkoutPage(
      {Key key, @required this.bNavBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //TODO create: (context) => getIt<WorkoutsBloc>()..add(WorkoutsEvent.watchByExerciseStarted(exerciseId)),
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Builder(
                builder: (context) => IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Router.navigator.pushNamed(Routes.exerciseFormPage);
                        //TODO SEND EDITED EXERCISE INFORMATION
                      },
                    )),
            Builder(
                builder: (context) => IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        context.bloc().add(WorkoutsEvent.workoutSaved());
                      },
                    )),
            Builder(
                builder: (context) => IconButton(
                      icon: Icon(Icons.delete_forever),
                      onPressed: () {
                        //TODO DIALOG/FLUSHBAR TO CONFIRM DELETING THAT WORKOUT WITH INFORMATION (DATA) ABOUT THE WORKOUT
                      },
                    )),
          ],
        ),
        bottomNavigationBar: bNavBar,
        body: BlocBuilder<WorkoutsBloc, WorkoutsState>(builder: (context, state) {
          return Container(
            child: Column(
              children: [
                NameWithPartiesRow(state.exercise),
                WorkoutsDropdownList(workouts: state.workouts),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class NameWithPartiesRow extends StatelessWidget {
  final Exercise exercise;
  const NameWithPartiesRow(this.exercise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            exercise.name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff003399)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            children: [
              PartyWidget(exercise.parties[0]),
              SizedBox(
                height: 3,
              ),
              PartyWidget(exercise.parties[1]),
              SizedBox(
                height: 3,
              ),
              PartyWidget(exercise.parties[2]),
            ],
          ),
        ),
      ],
    );
  }
}

class WorkoutsDropdownList extends StatelessWidget {
  final List<Workout> workouts;
  const WorkoutsDropdownList({@required this.workouts, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutsBloc, WorkoutsState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Row(
            children: [
              Expanded(
                  child: DropdownButton(
                  items: workouts.map((e) => DropdownMenuItem<DateTime>(child:Text('${e.date}'), value: e.date)).toList(),
                onChanged: (DateTime date) {},
              )),
              FlatButton(
                onPressed: () {},
                child: Text('New workout'),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.date_range)),
            ],
          )),
        );
      },
    );
  }
}
