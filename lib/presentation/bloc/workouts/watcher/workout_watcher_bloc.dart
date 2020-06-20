import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
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
  WorkoutWatcherState get initialState => const WorkoutWatcherState.initial();

  @override
  Stream<WorkoutWatcherState> mapEventToState(
    WorkoutWatcherEvent event,
  ) async* {
    yield* event.map(

        watchByExerciseStarted: (e) async* {
          _workoutsStreamSubscription?.cancel();
          _workoutsStreamSubscription = _repository
              .watchWorkoutsByExercise(e.exerciseId)
              .listen(
                  (workouts) => add(WorkoutWatcherEvent.workoutsReceived(workouts)));
        },
        workoutsReceived: (e) async* {
          yield e.failureOrWorkouts.fold(
              (failure) => WorkoutWatcherState.loadFailure(failure),
              (workouts) => WorkoutWatcherState.loadSuccess(workouts));
        },
        workoutChanged: (e) async* {
          yield WorkoutWatcherState.loadedCurrWorkout(e.workout);
        },);
  }

  @override
  Future<void> close() async {
    await _workoutsStreamSubscription?.cancel();
    return super.close();
  }
}
