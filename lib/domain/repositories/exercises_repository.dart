import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/exercise.dart';


abstract class IExercisesRepository{
  Stream<Either<FirebaseFailure, List<Exercise>>> watchAll();
  Stream<Either<FirebaseFailure, List<Exercise>>> watchByParty(String partyStr);
  Future<Either<FirebaseFailure, Unit>> insert(Exercise exercise);
  Future<Either<FirebaseFailure, Unit>> update(Exercise exercise);
  Future<Either<FirebaseFailure, Unit>> delete(Exercise exercise);
}