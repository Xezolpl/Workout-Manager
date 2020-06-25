import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/workouts/current_workout/current_workout_bloc.dart';
import 'package:workout_manager/presentation/bloc/workouts/watcher/workout_watcher_bloc.dart';
import 'package:workout_manager/presentation/pages/widgets/fancy_loading_square.dart';
import 'package:workout_manager/presentation/pages/workout/widgets/name_with_parties_row.dart';
import 'package:workout_manager/presentation/pages/workout/widgets/series_list.dart';
import 'package:workout_manager/presentation/pages/workout/widgets/workouts_dropdown_list.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';
import 'package:workout_manager/presentation/util/flushbars.dart';

class WorkoutPage extends StatelessWidget {
  final Widget bNavBar;
  final Exercise exercise;
  const WorkoutPage({Key key, @required this.bNavBar, @required this.exercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Workout selectedWorkout;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CurrentWorkoutBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<WorkoutWatcherBloc>()
            ..add(WorkoutWatcherEvent.watchByExercise(exercise.id)),
        ),
      ],
      child: BlocListener<CurrentWorkoutBloc, CurrentWorkoutState>(
        listener: (context, state) {
          selectedWorkout = state.workout;
        },
        child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Router.navigator.pushNamed(Routes.exerciseFormPage,
                          arguments: ExerciseFormPageArguments(
                              editedExercise: exercise));
                    },
                  ),
                ),
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.save),
                    onPressed: () {
                      if (selectedWorkout != null &&
                          selectedWorkout.id.isNotEmpty) {
                        context
                          ..bloc<WorkoutWatcherBloc>()
                              .add(WorkoutWatcherEvent.update(selectedWorkout));
                      } else {
                        Flushbars.createInfo(
                                message: 'You have not selected the workout.')
                            .show(context);
                      }
                    },
                  ),
                ),
              ],
            ),
            bottomNavigationBar: bNavBar,
            body: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  NameWithPartiesRow(exercise),
                  WorkoutsDropdownList(exercise),
                   Expanded(
                     child: SeriesList(),
                   ),
                ],
              ),
            )),
      ),
    );
  }
}
