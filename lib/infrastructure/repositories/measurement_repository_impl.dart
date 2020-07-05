import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/core/x_datetime.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/repositories/measurement_repository.dart';
import 'package:workout_manager/infrastructure/data/firebase/firestore_helpers.dart';

@lazySingleton
@RegisterAs(IMeasurementRepository)
class MeasurementRepositoryImpl implements IMeasurementRepository {
  final Firestore _firestore;

  MeasurementRepositoryImpl(this._firestore);

  @override
  Stream<Either<FirebaseFailure, List<Measurement>>> watch(
      DateTime measurementDate) async* {
    final userDoc = await _firestore.userDocument();
    try {
      yield* userDoc.measurementsCollection.snapshots().map((snap) =>
          right<FirebaseFailure, List<Measurement>>(snap.documents
              .map((doc) => Measurement.fromJson(doc.data))
              .where((measurement) => XDateTime(measurement.date)
                  .isAtSameDate(measurementDate))
              ));
    } catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        yield left(const FirebaseFailure.insufficientPermissions());
      } else {
        yield left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirebaseFailure, List<Measurement>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    try {
      yield* userDoc.measurementsCollection.snapshots().map((snap) =>
          right<FirebaseFailure, List<Measurement>>(snap.documents
              .map((doc) => Measurement.fromJson(doc.data))
              .toList()
                ..sort((item1, item2) => item1.date.compareTo(item2.date))));
    } catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        yield left(const FirebaseFailure.insufficientPermissions());
      } else {
        yield left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> insert(Measurement measurement) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.measurementsCollection
          .document(measurement.date.toString())
          .setData(measurement.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const FirebaseFailure.unableToUpdate());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> update(Measurement measurement)  async{
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.measurementsCollection
          .document(measurement.date.toString())
          .updateData(measurement.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const FirebaseFailure.unableToUpdate());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> delete(Measurement measurement) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.measurementsCollection
          .document(measurement.date.toString()).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const FirebaseFailure.unableToUpdate());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }
}
