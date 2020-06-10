part of 'exercises_bloc.dart';

@freezed
abstract class ExercisesState with _$ExercisesState{
  const factory ExercisesState.initial() = Initial;
  const factory ExercisesState.loadInProgress() = LoadInProgress;
  const factory ExercisesState.loadSuccess(List<Exercise> exercises) = LoadSuccess;
  const factory ExercisesState.loadFailure(FirebaseFailure failure) = LoadFailure;
}

