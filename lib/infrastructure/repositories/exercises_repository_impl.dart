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
  Stream<Either<ExerciseFailure, List<Exercise>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    try {
      //yield* _firestore.collection('exercises').orderBy('name');
      Stream<Either<ExerciseFailure, List<Exercise>>> userExercises = userDoc
          .exercisesCollection
          .snapshots()
          .map((snap) => right<ExerciseFailure, List<Exercise>>(snap.documents
              .map((doc) => Exercise.fromJson(doc.data))
              .toList()));

      Stream<Either<ExerciseFailure, List<Exercise>>> globalExercises =
          _firestore.collection('exercises').snapshots().map((snap) =>
              right<ExerciseFailure, List<Exercise>>(snap.documents
                  .map((doc) => Exercise.fromJson(doc.data))
                  .toList()));

      final stream = new StreamZip([userExercises, globalExercises]).map((ab) => ab[0]
          .replace(ab[0].getOrElse(() => null)
            ..addAll(ab[1].getOrElse(() => null))
              ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()))));
      yield* stream;
    } catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        yield left(const ExerciseFailure.insufficientPermissions());
      } else {
        yield left(const ExerciseFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ExerciseFailure, List<Exercise>>> watchByParty(
      String partyStr) async* {
    final userDoc = await _firestore.userDocument();
    Stream<Either<ExerciseFailure, List<Exercise>>> userExercises = userDoc
          .exercisesCollection
          .snapshots()
          .map((snap) => right<ExerciseFailure, List<Exercise>>(snap.documents
              .map((doc) => Exercise.fromJson(doc.data))
              .toList()));

      Stream<Either<ExerciseFailure, List<Exercise>>> globalExercises =
          _firestore.collection('exercises').snapshots().map((snap) =>
              right<ExerciseFailure, List<Exercise>>(snap.documents
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
  Future<Either<ExerciseFailure, Unit>> insert(Exercise exercise) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection
          .document(exercise.id)
          .setData(exercise.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermissions());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> update(Exercise exercise) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection
          .document(exercise.id)
          .updateData(exercise.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermissions());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> delete(Exercise exercise) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.exercisesCollection.document(exercise.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ExerciseFailure.insufficientPermissions());
      } else {
        return left(const ExerciseFailure.unexpected());
      }
    }
  }
}
