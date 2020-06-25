import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/repositories/exercises_repository.dart';
import 'package:workout_manager/infrastructure/data/firebase/firestore_helpers.dart';

@lazySingleton
@RegisterAs(IExercisesRepository)
class ExercisesRepositoryImpl implements IExercisesRepository {
  final Firestore _firestore;

  ExercisesRepositoryImpl(this._firestore);

  @override
  Stream<Either<FirebaseFailure, List<Exercise>>> watch(String exerciseId) async* {
    final userDoc = await _firestore.userDocument();
    try {
      yield* userDoc
          .exercisesCollection
          .snapshots()
          .map((snap) => right<FirebaseFailure, List<Exercise>>(snap.documents
              .map((doc) => Exercise.fromJson(doc.data))
              .where((exercise) => exercise.id == exerciseId )
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
  Stream<Either<FirebaseFailure, List<Exercise>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    try {
      Stream<Either<FirebaseFailure, List<Exercise>>> userExercises = userDoc
          .exercisesCollection
          .snapshots()
          .map((snap) => right<FirebaseFailure, List<Exercise>>(snap.documents
              .map((doc) => Exercise.fromJson(doc.data))
              .toList()));

      Stream<Either<FirebaseFailure, List<Exercise>>> globalExercises =
          _firestore.collection('exercises').snapshots().map((snap) =>
              right<FirebaseFailure, List<Exercise>>(snap.documents
                  .map((doc) => Exercise.fromJson(doc.data))
                  .toList()));

      final stream = new StreamZip([userExercises, globalExercises]).map((ab) => ab[0]
          .replace(ab[0].getOrElse(() => null)
            ..addAll(ab[1].getOrElse(() => null))
              ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()))));
      yield* stream;
    } catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        yield left(const FirebaseFailure.insufficientPermissions());
      } else {
        yield left(const FirebaseFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirebaseFailure, List<Exercise>>> watchByParty(
      String partyStr) async* {
    final userDoc = await _firestore.userDocument();
    Stream<Either<FirebaseFailure, List<Exercise>>> userExercises = userDoc
          .exercisesCollection
          .snapshots()
          .map((snap) => right<FirebaseFailure, List<Exercise>>(snap.documents
              .map((doc) => Exercise.fromJson(doc.data))
              .toList()));

      Stream<Either<FirebaseFailure, List<Exercise>>> globalExercises =
          _firestore.collection('exercises').snapshots().map((snap) =>
              right<FirebaseFailure, List<Exercise>>(snap.documents
                  .map((doc) => Exercise.fromJson(doc.data))
                  .toList()));

      final stream = new StreamZip([userExercises, globalExercises]).map((ab) => ab[0]
          .replace(ab[0].getOrElse(() => null)
            ..addAll(ab[1].getOrElse(() => null))
              ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()))
                ..removeWhere((element) => element.parties[0]!=partyStr)));
                
      yield* stream;
  }

  @override
  Future<Either<FirebaseFailure, Unit>> insert(Exercise exercise) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection
          .document(exercise.id)
          .setData(exercise.toJson());

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
  Future<Either<FirebaseFailure, Unit>> update(Exercise exercise) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection
          .document(exercise.id)
          .updateData(exercise.toJson());
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
  Future<Either<FirebaseFailure, Unit>> delete(Exercise exercise) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection.document(exercise.id).delete();
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
