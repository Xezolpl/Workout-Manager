part of 'current_workout_bloc.dart';

@freezed
abstract class CurrentWorkoutEvent with _$CurrentWorkoutEvent {
  const factory CurrentWorkoutEvent.workoutChanged(Workout newWorkout) = _Changed;
  const factory CurrentWorkoutEvent.seriesInserted() = _SeriesInserted;
  const factory CurrentWorkoutEvent.seriesChanged(int seriesIndex, WorkoutFields field, String value) = _SeriesChanged;
  const factory CurrentWorkoutEvent.seriesDeleted(int seriesIndex) = _SeriesDeleted;
}
