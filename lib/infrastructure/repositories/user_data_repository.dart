import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/user_data/user_data.dart';
import 'package:workout_manager/infrastructure/data/firebase/firestore_helpers.dart';

@lazySingleton
class UserDataRepository {
  final Firestore _firestore;

  UserDataRepository(this._firestore);

  Future<Either<FirebaseFailure, Unit>> insert(UserData userData) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.setData(userData.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFailure.insufficientPermissions());
      } else {
        return left(const FirebaseFailure.unexpected());
      }
    }
  }
  
  Future<Either<FirebaseFailure, Unit>> update(UserData userData) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.updateData(userData.toJson());

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
