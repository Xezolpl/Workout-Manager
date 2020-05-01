import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/entities/user.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser firebaseUser) {
    return firebaseUser == null
        ? null
        : User(
            uid: firebaseUser.uid,
            name: firebaseUser.displayName ?? firebaseUser.email.split('@').first,
            emailAddress: firebaseUser.email,
          );
  }
}