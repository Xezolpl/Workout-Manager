import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/domain/repositories/workout_repository.dart';

part 'workout_actor_event.dart';
part 'workout_actor_state.dart';
part 'workout_actor_bloc.freezed.dart';

@injectable
class WorkoutActorBloc extends Bloc<WorkoutActorEvent, WorkoutActorState> {
  final IWorkoutRepository _repository;

  WorkoutActorBloc(this._repository);

  @override
  WorkoutActorState get initialState => WorkoutActorState.initial();

  @override
  Stream<WorkoutActorState> mapEventToState(
    WorkoutActorEvent event,
  ) async* {
    yield* event.map(changed: (e) async* {
      yield WorkoutActorState.loadedWorkout(e.currentWorkout);
    }, added: (e) async* {
      Either<FirebaseFailure, Unit> failureOrSuccess;

      yield WorkoutActorState.actionInProgress();

      failureOrSuccess = await _repository.insert(e.workout);

      yield failureOrSuccess.fold(
          (failure) => WorkoutActorState.addFailure(failure),
          (_) => WorkoutActorState.addSuccess());
    }, saved: (e) async* {
      Either<FirebaseFailure, Unit> failureOrSuccess;

      yield WorkoutActorState.actionInProgress();

      failureOrSuccess = await _repository.update(e.workout);

      yield failureOrSuccess.fold(
          (failure) => WorkoutActorState.updateFailure(failure),
          (_) => WorkoutActorState.updateSuccess());
    }, deleted: (e) async* {
      Either<FirebaseFailure, Unit> failureOrSuccess;

      yield WorkoutActorState.actionInProgress();

      failureOrSuccess = await _repository.delete(e.workout);

      yield failureOrSuccess.fold(
          (failure) => WorkoutActorState.deleteFailure(failure),
          (_) => WorkoutActorState.deleteSuccess());
    });
  }
}