part of 'current_workout_bloc.dart';

@freezed
abstract class CurrentWorkoutState with _$CurrentWorkoutState {
  const factory CurrentWorkoutState({
    @required Workout workout,
    @required bool showErrorMessages,
    @required int refresher,
  }) = _CurrentWorkoutState;

  factory CurrentWorkoutState.initial() =>
      CurrentWorkoutState(workout: Workout.empty(), showErrorMessages: false, refresher: 0);
}
