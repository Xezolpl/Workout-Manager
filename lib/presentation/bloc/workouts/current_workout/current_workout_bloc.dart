import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/workout_coder.dart';
import 'package:workout_manager/domain/entities/workout.dart';

part 'current_workout_event.dart';
part 'current_workout_state.dart';
part 'current_workout_bloc.freezed.dart';

@injectable
class CurrentWorkoutBloc
    extends Bloc<CurrentWorkoutEvent, CurrentWorkoutState> {
  @override
  CurrentWorkoutState get initialState => CurrentWorkoutState.initial();

  @override
  Stream<CurrentWorkoutState> mapEventToState(
    CurrentWorkoutEvent event,
  ) async* {
    yield* event.map(workoutChanged: (e) async* {
      yield state.copyWith(workout: e.newWorkout);
    }, seriesInserted: (e) async* {
      List<String> series = List<String>.from(state.workout.series);
      series.add('-1:-1:-1');
      yield state.copyWith(
          refresher: state.refresher + 1,
          workout: state.workout.copyWith(series: series));
    }, seriesChanged: (e) async* {
      int weight, reps, duration;

      Series series = WorkoutCoder.decode(state.workout.series[e.seriesIndex]);
      weight = series.weight;
      reps = series.reps;
      duration = series.duration;

      switch (e.field) {
        case WorkoutFields.Weight:
          {
            weight = int.parse(e.value);
            break;
          }
        case WorkoutFields.Reps:
          {
            reps = int.parse(e.value);
            break;
          }
        case WorkoutFields.Duration:
          {
            duration = int.parse(e.value);
            break;
          }
      }
      yield state
        ..workout.copyWith(
            series: new List<String>.from(state.workout.series
              ..removeAt(e.seriesIndex)
              ..insert(
                  e.seriesIndex, WorkoutCoder.encode(weight, reps, duration))));
    }, seriesDeleted: (e) async* {
      yield state
        ..workout.copyWith(
            series: new List<String>.from(
                state.workout.series..removeAt(e.seriesIndex)));
    });
  }
}
