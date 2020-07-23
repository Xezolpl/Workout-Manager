import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/constants/exercise_constants.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/domain/repositories/exercises_repository.dart';

part 'exercise_form_event.dart';
part 'exercise_form_state.dart';
part 'exercise_form_bloc.freezed.dart';

@injectable
class ExerciseFormBloc extends Bloc<ExerciseFormEvent, ExerciseFormState> {
  final IExercisesRepository _exercisesRepository;

  ExerciseFormBloc(this._exercisesRepository);

  @override
  ExerciseFormState get initialState => ExerciseFormState.initial();

  @override
  Stream<ExerciseFormState> mapEventToState(
    ExerciseFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialExerciseOption.fold(
            () => state,
            (initialExercise) =>
                state.copyWith(exercise: initialExercise, isEditing: true));
      },
      nameChanged: (e) async* {
        yield state.copyWith(exercise: state.exercise.copyWith(name: e.name));
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
            exercise: state.exercise.copyWith(description: e.description));
      },
      partyChanged: (e) async* {
        yield state.copyWith(
            primaryParty: e.index == 0 ? e.party : state.primaryParty,
            secondaryParty: e.index == 1 ? e.party : state.secondaryParty,
            tetriaryParty: e.index == 2 ? e.party : state.tetriaryParty,
            exercise: state.exercise.copyWith(
                parties: state.exercise.parties
                  ..removeAt(e.index)
                  ..insert(e.index, e.party)));
      },
      saved: (e) async* {
        Either<FirebaseFailure, Unit> failureOrSuccess;

        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());

        failureOrSuccess = state.isEditing
            ? await _exercisesRepository.update(state.exercise)
            : await _exercisesRepository.insert(state.exercise);

        yield state.copyWith(
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          isSaving: false,
        );
      },
    );
  }
}
