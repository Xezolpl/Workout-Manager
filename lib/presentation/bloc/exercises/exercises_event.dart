part of 'exercises_bloc.dart';

@freezed
abstract class ExercisesEvent with _$ExercisesEvent{
   const factory ExercisesEvent.watchAllStarted() = _WatchAllStarted;
   const factory ExercisesEvent.watchByPartyStarted(String party) = _WatchByPartyStarted;
   const factory ExercisesEvent.exercisesReceived(Either<ExerciseFailure, List<Exercise>> failuresOrExercises) = _ExercisesReceived;
}
