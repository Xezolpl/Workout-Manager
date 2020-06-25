part of 'workout_watcher_bloc.dart';

@freezed
abstract class WorkoutWatcherState with _$WorkoutWatcherState {
  const factory WorkoutWatcherState.loadInProgress() = LoadInProgress;
  const factory WorkoutWatcherState.workoutsLoaded(List<Workout> workouts) = Loaded;

  const factory WorkoutWatcherState.success(OPERATION operation, [Workout workout]) = Success;
  const factory WorkoutWatcherState.failure(OPERATION operation, FirebaseFailure noteFailure) = Failure;
}
