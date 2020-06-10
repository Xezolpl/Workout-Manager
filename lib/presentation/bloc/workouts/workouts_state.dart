part of 'workouts_bloc.dart';

@freezed
abstract class WorkoutsState with _$WorkoutsState{
  const factory WorkoutsState({
    @required Exercise exercise,
    @required List<Workout> workouts,
    @required Workout currentWorkout,
    @required bool isSaving,
    @required Option<FirebaseFailure> loadingFailureOption,
    @required Option<Either<FirebaseFailure,Unit>> saveFailureOrSuccessOption,
  }) = _WorkoutState;

  factory WorkoutsState.initial() => WorkoutsState(
    exercise: null,
    workouts: null,
    currentWorkout: null,
    isSaving: false,
    loadingFailureOption: none(),
    saveFailureOrSuccessOption: none(),
  );

}

