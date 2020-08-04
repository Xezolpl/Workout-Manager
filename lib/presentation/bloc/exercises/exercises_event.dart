part of 'exercises_bloc.dart';

@freezed
abstract class ExercisesEvent with _$ExercisesEvent {
  const factory ExercisesEvent.watchStarted(String exerciseId) = _WatchStarted;
  const factory ExercisesEvent.watchAllStarted() = _WatchAllStarted;
  const factory ExercisesEvent.watchByPartyStarted(String party) =
      _WatchByPartyStarted;
  const factory ExercisesEvent.filtered(String pattern) = _Filtered;
  const factory ExercisesEvent.exercisesReceived(
          Either<FirebaseFailure, List<Exercise>> failuresOrExercises) =
      _ExercisesReceived;
}
