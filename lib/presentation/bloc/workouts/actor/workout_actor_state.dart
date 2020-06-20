part of 'workout_actor_bloc.dart';

@freezed
abstract class WorkoutActorState with _$WorkoutActorState{
  const factory WorkoutActorState.initial() = Initial;
  const factory WorkoutActorState.loadedWorkout(Workout currentWorkout) = Changed;
  const factory WorkoutActorState.actionInProgress() = ActionInProgress;

  const factory WorkoutActorState.addSuccess() = AddSuccess;
  const factory WorkoutActorState.addFailure(FirebaseFailure failure) = AddFailure;

  const factory WorkoutActorState.updateSuccess() = UpdateAddSuccess;
  const factory WorkoutActorState.updateFailure(FirebaseFailure failure) = UpdateFailure;

  const factory WorkoutActorState.deleteSuccess() = DeleteSuccess;
  const factory WorkoutActorState.deleteFailure(FirebaseFailure failure) = DeleteFailure;

}
