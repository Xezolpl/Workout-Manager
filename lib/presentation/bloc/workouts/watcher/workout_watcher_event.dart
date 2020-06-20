part of 'workout_watcher_bloc.dart';

@freezed
abstract class WorkoutWatcherEvent with _$WorkoutWatcherEvent{
  const factory WorkoutWatcherEvent.watchByExerciseStarted(String exerciseId) = _WatchByExerciseStarted;
  const factory WorkoutWatcherEvent.workoutChanged(Workout workout) = _WorkoutChanged;
  const factory WorkoutWatcherEvent.workoutsReceived(
      Either<FirebaseFailure, List<Workout>> failureOrWorkouts) = _WorkoutsReceived;
}
