part of 'workouts_bloc.dart';

@freezed
abstract class WorkoutsEvent with _$WorkoutsEvent{
   const factory WorkoutsEvent.initialized(Exercise exercise) = _Initialized;

   const factory WorkoutsEvent.watchByExerciseStarted(String exerciseId) = _WatchByExerciseStarted;
   const factory WorkoutsEvent.workoutsReceived(Either<FirebaseFailure, List<Workout>> failuresOrWorkouts) = _WorkoutsReceived;
  
   const factory WorkoutsEvent.workoutChanged(int seriesIndex, String encodedSeries) = _WorkoutSeriesChanged;
   const factory WorkoutsEvent.workoutSaved() = _WorkoutSaved;
   const factory WorkoutsEvent.workoutDeleted() = _WorkoutDeleted;
}
