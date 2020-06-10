import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/workout.dart';

abstract class IWorkoutRepository{
  Stream<Either<FirebaseFailure, List<Workout>>> watchAll();
  Stream<Either<FirebaseFailure, List<Workout>>> watchWorkoutsByExercise(String exerciseId);
  Future<Either<FirebaseFailure, Unit>> insert(Workout workout);
  Future<Either<FirebaseFailure, Unit>> update(Workout workout);
  Future<Either<FirebaseFailure, Unit>> delete(Workout workout);
}