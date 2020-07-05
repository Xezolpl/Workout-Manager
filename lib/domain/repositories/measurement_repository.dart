import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';

abstract class IMeasurementRepository {
  Stream<Either<FirebaseFailure, List<Measurement>>> watch(DateTime measurementDate);
  Stream<Either<FirebaseFailure, List<Measurement>>> watchAll();
  Future<Either<FirebaseFailure, Unit>> insert(Measurement measurement);
  Future<Either<FirebaseFailure, Unit>> update(Measurement measurement);
  Future<Either<FirebaseFailure, Unit>> delete(Measurement measurement);
}
