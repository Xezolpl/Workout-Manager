part of 'bottom_navigation_bloc.dart';

@freezed
abstract class BottomNavigationState with _$BottomNavigationState{
  const factory BottomNavigationState.exercisesPage() = ExercisesPageS;
  const factory BottomNavigationState.workoutPage() = WorkoutPageS;
  const factory BottomNavigationState.accountPage() = AccountPageS;

}