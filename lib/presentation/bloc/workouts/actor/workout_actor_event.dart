part of 'workout_actor_bloc.dart';

@freezed
abstract class WorkoutActorEvent with _$WorkoutActorEvent{
  const factory WorkoutActorEvent.added(Workout workout) = _Added;
  const factory WorkoutActorEvent.changed(Workout currentWorkout) = _Changed;
  const factory WorkoutActorEvent.deleted(Workout workout) = _Deleted;
  const factory WorkoutActorEvent.saved(Workout workout) = _Saved;
}
