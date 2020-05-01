import 'package:dartz/dartz.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/user.dart';

abstract class IAuthRepository {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(String email, String password);
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(String email, String password);
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}