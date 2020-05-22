part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormState with _$ExerciseFormState{
  const factory ExerciseFormState({
    @required Exercise exercise,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<ExerciseFailure,Unit>> saveFailureOrSuccessOption,
    String primaryParty,
    String secondaryParty,
    String tetriaryParty,
  }) = _ExerciseFormState;

  factory ExerciseFormState.initial() => ExerciseFormState(
    exercise: Exercise.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
    primaryParty: EXERCISE_PARTIES[1],
    secondaryParty: EXERCISE_PARTIES[0],
    tetriaryParty: EXERCISE_PARTIES[0],
  );
}

