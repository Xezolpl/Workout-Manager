part of 'workout_watcher_bloc.dart';

@freezed
abstract class WorkoutWatcherState with _$WorkoutWatcherState {
  const factory WorkoutWatcherState.initial() = Initial;
  const factory WorkoutWatcherState.loadedCurrWorkout(Workout currWorkout) = LoadedCurrWorkout;
  const factory WorkoutWatcherState.loadInProgress() = LoadInProgress;
  const factory WorkoutWatcherState.loadSuccess(List<Workout> workouts) = LoadSuccess;
  const factory WorkoutWatcherState.loadFailure(FirebaseFailure noteFailure) = LoadFailure;
}
