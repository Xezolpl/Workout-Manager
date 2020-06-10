import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/domain/repositories/workout_repository.dart';

part 'workouts_event.dart';
part 'workouts_state.dart';
part 'workouts_bloc.freezed.dart';

class WorkoutsBloc extends Bloc<WorkoutsEvent, WorkoutsState> {
  final IWorkoutRepository _repository;
  StreamSubscription<Either<FirebaseFailure, List<Workout>>>
      _workoutsStreamSubscription;
  WorkoutsBloc(this._repository);

  @override
  WorkoutsState get initialState => WorkoutsState.initial();

  @override
  Future<void> close() async {
    await _workoutsStreamSubscription.cancel();
    return super.close();
  }

  @override
  Stream<WorkoutsState> mapEventToState(WorkoutsEvent event) async* {
    yield* event.map(
        initialized: (e) async* {
          yield state.copyWith(exercise: e.exercise);
        },
        watchByExerciseStarted: (e) async* {
          _workoutsStreamSubscription?.cancel();
          _workoutsStreamSubscription = _repository.watchAll().listen(
              (workouts) => add(WorkoutsEvent.workoutsReceived(workouts)));
        },
        workoutsReceived: (e) async* {
          yield e.failuresOrWorkouts.fold(
              (l) => state.copyWith(loadingFailureOption: some(l)),
              (r) => state.copyWith(workouts: r));
        },
        workoutChanged: (e) async* {
          Workout workout = state.currentWorkout;
          workout.series.length >= e.seriesIndex
              ? (workout.series
                ..removeAt(e.seriesIndex)
                ..insert(e.seriesIndex, e.encodedSeries))
              : workout.series.insert(e.seriesIndex, e.encodedSeries);
          yield state.copyWith(currentWorkout: workout);
        },
        workoutSaved: (e) async* {
        Either<FirebaseFailure, Unit> failureOrSuccess;

        yield state.copyWith(isSaving: true);

        if (state.saveFailureOrSuccessOption.isNone()) {
          failureOrSuccess =  await _repository.update(state.currentWorkout);
        }

        yield state.copyWith(
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          isSaving: false,
        );
        },
        workoutDeleted: (e) async* {
          _repository.delete(state.currentWorkout);
        });
  }
}
