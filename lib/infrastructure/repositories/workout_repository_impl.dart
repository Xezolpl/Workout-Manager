import 'package:flutter/services.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/repositories/workout_repository.dart';
import 'package:workout_manager/infrastructure/data/firebase/firestore_helpers.dart';

class WorkoutRepositoryImpl implements IWorkoutRepository {
  final Firestore _firestore;

  WorkoutRepositoryImpl(this._firestore);

  @override
  Stream<Either<FirebaseFailure, List<Workout>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    try {
      yield* userDoc.workoutsCollection.snapshots().map((snap) =>
          right<FirebaseFailure, List<Workout>>(snap.documents
              .map((doc) => Workout.fromJson(doc.data))
              .toList()));
    } catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        yield left(const FirebaseFailure.insufficientPermissions());
      } else {
        yield left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirebaseFailure, List<Workout>>> watchWorkoutsByExercise(
      String exerciseId) async* {
    final userDoc = await _firestore.userDocument();
    try {
      yield* userDoc.workoutsCollection.snapshots().map((snap) =>
          right<FirebaseFailure, List<Workout>>(snap.documents
              .map((doc) => Workout.fromJson(doc.data))
              .where((workout) => workout.exerciseId == exerciseId)
              .toList()));
    } catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        yield left(const FirebaseFailure.insufficientPermissions());
      } else {
        yield left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> insert(Workout workout) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection
          .document(workout.id)
          .setData(workout.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> update(Workout workout) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection
          .document(workout.id)
          .updateData(workout.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> delete(Workout workout) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection.document(workout.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }
}
