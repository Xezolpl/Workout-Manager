import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/exercise.dart';


abstract class IExercisesRepository{
  Stream<Either<ExerciseFailure, List<Exercise>>> watchAll();
  Stream<Either<ExerciseFailure, List<Exercise>>> watchByParty(String partyStr);
  Future<Either<ExerciseFailure, Unit>> insert(Exercise exercise);
  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise);
  Future<Either<ExerciseFailure, Unit>> delete(Exercise exercise);
}