part of 'workout_watcher_bloc.dart';

@freezed
abstract class WorkoutWatcherEvent with _$WorkoutWatcherEvent{
  const factory WorkoutWatcherEvent.insert(Workout workout) = _Insert;
  const factory WorkoutWatcherEvent.update(Workout workout) = _Update;
  const factory WorkoutWatcherEvent.delete(Workout workout) = _Delete;
  
  const factory WorkoutWatcherEvent.watch(String id) = _Watch;
  const factory WorkoutWatcherEvent.watchByExercise(String exerciseId) = _WatchByExercise;
  const factory WorkoutWatcherEvent.received(OPERATION operation,
      Either<FirebaseFailure, List<Workout>> failureOrWorkouts) = _Received;
}
