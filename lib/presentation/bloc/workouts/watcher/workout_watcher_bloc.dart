import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/constants/actor_options.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/domain/repositories/workout_repository.dart';

part 'workout_watcher_event.dart';
part 'workout_watcher_state.dart';
part 'workout_watcher_bloc.freezed.dart';

@injectable
class WorkoutWatcherBloc
    extends Bloc<WorkoutWatcherEvent, WorkoutWatcherState> {
  final IWorkoutRepository _repository;

  StreamSubscription<Either<FirebaseFailure, List<Workout>>>
      _workoutsStreamSubscription;

  WorkoutWatcherBloc(this._repository);

  @override
  WorkoutWatcherState get initialState =>
      const WorkoutWatcherState.loadInProgress();

  @override
  Stream<WorkoutWatcherState> mapEventToState(
    WorkoutWatcherEvent event,
  ) async* {
    yield* event.map(insert: (e) async* {
      final failureOrSuccess = await _repository.insert(e.workout);
      yield failureOrSuccess.fold(
          (failure) => WorkoutWatcherState.failure(OPERATION.INSERT, failure),
          (_) => WorkoutWatcherState.success(OPERATION.INSERT, e.workout));
    }, update: (e) async* {
      final failureOrSuccess = await _repository.update(e.workout);
      yield failureOrSuccess.fold(
          (failure) => WorkoutWatcherState.failure(OPERATION.UPDATE, failure),
          (_) => WorkoutWatcherState.success(OPERATION.UPDATE));
    }, delete: (e) async* {
      final failureOrSuccess = await _repository.delete(e.workout);
      yield failureOrSuccess.fold(
          (failure) => WorkoutWatcherState.failure(OPERATION.DELETE, failure),
          (_) => WorkoutWatcherState.success(OPERATION.DELETE, e.workout));
    }, watch: (e) async* {
      //TODO: IMPLEMENT
    }, watchByExercise: (e) async* {
      _workoutsStreamSubscription?.cancel();
      _workoutsStreamSubscription = _repository
          .watchWorkoutsByExercise(e.exerciseId)
          .listen((workouts) =>
              add(WorkoutWatcherEvent.received(OPERATION.WATCH, workouts)));
    }, received: (e) async* {
      yield e.failureOrWorkouts.fold(
          (failure) => WorkoutWatcherState.failure(e.operation, failure),
          (workouts) => WorkoutWatcherState.workoutsLoaded(workouts));
    });
  }

  @override
  Future<void> close() async {
    await _workoutsStreamSubscription?.cancel();
    return super.close();
  }
}
