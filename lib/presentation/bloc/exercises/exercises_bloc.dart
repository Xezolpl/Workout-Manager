import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/domain/repositories/exercises_repository.dart';

part 'exercises_event.dart';
part 'exercises_state.dart';
part 'exercises_bloc.freezed.dart';

@injectable
class ExercisesBloc extends Bloc<ExercisesEvent, ExercisesState> {
  final IExercisesRepository _repository;
  StreamSubscription<Either<FirebaseFailure, List<Exercise>>>
      _exercisesStreamSubscription;
  ExercisesBloc(this._repository);

  @override
  ExercisesState get initialState => Initial();

  @override
  Stream<ExercisesState> mapEventToState(
    ExercisesEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ExercisesState.loadInProgress();
      _exercisesStreamSubscription?.cancel();
      _exercisesStreamSubscription = _repository.watchAll().listen(
          (exercises) => add(ExercisesEvent.exercisesReceived(exercises)));
    }, watchByPartyStarted: (e) async* {
      yield const ExercisesState.loadInProgress();
      _exercisesStreamSubscription?.cancel();
      _exercisesStreamSubscription = _repository.watchByParty(e.party).listen(
          (exercises) => add(ExercisesEvent.exercisesReceived(exercises)));
    }, watchStarted: (e) async* {
      yield const ExercisesState.loadInProgress();
      _exercisesStreamSubscription?.cancel();
      _exercisesStreamSubscription = _repository.watch(e.exerciseId).listen(
          (exercise) => add(ExercisesEvent.exercisesReceived(exercise)));
    }, exercisesReceived: (e) async* {
      yield e.failuresOrExercises.fold((l) => ExercisesState.loadFailure(l),
          (r) => ExercisesState.loadSuccess(r));
    });
  }

  @override
  Future<void> close() async {
    await _exercisesStreamSubscription?.cancel();
    return super.close();
  }
}
