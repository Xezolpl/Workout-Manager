import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/user.dart';
import 'package:workout_manager/domain/repositories/auth_repository.dart';
import 'package:workout_manager/infrastructure/data/firebase/firebase_user_mapper.dart';

@prod
@lazySingleton
@RegisterAs(IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  AuthRepositoryImpl(this._firebaseAuth, this._googleSignIn, this._firebaseUserMapper);

  @override
  Future<Option<User>> getSignedInUser() async {
    return _firebaseAuth
        .currentUser()
        .then((u) => optionOf(_firebaseUserMapper.toDomain(u)));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
    String email, String password) async {
    try {
      return await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password)
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }

  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(String emailAddress, String password) async {
    try {
      return await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress, password: password)
      .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),]);
  }
}