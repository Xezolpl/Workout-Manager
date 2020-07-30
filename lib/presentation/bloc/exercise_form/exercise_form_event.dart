part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormEvent with _$ExerciseFormEvent {
  const factory ExerciseFormEvent.initialized(
      Option<Exercise> initialExerciseOption) = _Initialized;
  const factory ExerciseFormEvent.nameChanged(String name) = _NameChanged;
  const factory ExerciseFormEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory ExerciseFormEvent.imageChanged(String imgPath) = _ImageChanged;
  const factory ExerciseFormEvent.partyChanged(String party, int index) =
      _PartyChanged;
  const factory ExerciseFormEvent.saved() = _Saved;
}
