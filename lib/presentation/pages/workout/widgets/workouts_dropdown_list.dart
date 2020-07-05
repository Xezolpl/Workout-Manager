import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import 'package:workout_manager/domain/core/constants/actor_options.dart';
import 'package:workout_manager/domain/core/x_datetime.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/domain/entities/workout/workout.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/workouts/current_workout/current_workout_bloc.dart';
import 'package:workout_manager/presentation/bloc/workouts/watcher/workout_watcher_bloc.dart';
import 'package:workout_manager/presentation/util/flushbars.dart';

class WorkoutsDropdownList extends StatelessWidget {
  final Exercise exercise;
  const WorkoutsDropdownList(this.exercise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime pickedDate;

    Workout selectedWorkout;
    List<Workout> allWorkouts = [];

    return BlocListener<WorkoutWatcherBloc, WorkoutWatcherState>(
      listener: (context, state) => state.maybeMap(
          workoutsLoaded: (state) {
            allWorkouts = state.workouts;
            if (allWorkouts.isNotEmpty && selectedWorkout.id.isEmpty) {
              context
                  .bloc<CurrentWorkoutBloc>()
                  .add(CurrentWorkoutEvent.workoutChanged(allWorkouts.last));
            }
          },
          success: (state) {
            if(state.operation == OPERATION.INSERT && state.workout!=null){
              context
                  .bloc<CurrentWorkoutBloc>()
                  .add(CurrentWorkoutEvent.workoutChanged(state.workout));
            }else if (state.operation == OPERATION.DELETE && state.workout!=null) {
              allWorkouts.remove(state.workout);
              context
                  .bloc<CurrentWorkoutBloc>()
                  .add(CurrentWorkoutEvent.workoutChanged(allWorkouts.last));
            }
          },
          orElse: () {}),
      child: Container(
        child: Center(
            child: Row(
          children: [
            Expanded(
              child: Container(
                child: BlocBuilder<CurrentWorkoutBloc, CurrentWorkoutState>(
                    condition: (p, c) => p.workout.id != c.workout.id,
                    builder: (context, state) {
                      selectedWorkout = state.workout;
                      return DropdownButton<Workout>(
                          value: selectedWorkout,
                          items: allWorkouts
                              .map((e) => DropdownMenuItem<Workout>(
                                  child: Text(XDateTime(e.date).toDateHourMinuteFormat()), value: e))
                              .toList(),
                          onChanged: (Workout newWorkout) {
                            context.bloc<CurrentWorkoutBloc>().add(
                                CurrentWorkoutEvent.workoutChanged(newWorkout));
                          });
                    }),
              ),
            ),
            IconButton(
                onPressed: () {
                  Workout newWorkout =
                      Workout.empty().copyWith(id: Uuid().v4().toString(), exerciseId: exercise.id);
                  if (pickedDate != null) {
                    newWorkout = newWorkout.copyWith(date: pickedDate);
                  }
                  context
                    ..bloc<WorkoutWatcherBloc>()
                        .add(WorkoutWatcherEvent.insert(newWorkout));
                },
                icon: Icon(Icons.add_box)),
            IconButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now())
                      .then((date) {
                    pickedDate = date;
                    showTimePicker(
                            context: context, initialTime: TimeOfDay.now())
                        .then((time) => pickedDate = pickedDate.add(Duration(
                              hours: time.hour,
                              minutes: time.minute,
                            )));
                  });
                },
                icon: Icon(Icons.date_range)),
            IconButton(
                onPressed: () {
                  context
                    .bloc<WorkoutWatcherBloc>()
                        .add(WorkoutWatcherEvent.delete(selectedWorkout));
                },
                icon: Icon(Icons.delete_forever)),
          ],
        )),
      ),
    );
  }
}
