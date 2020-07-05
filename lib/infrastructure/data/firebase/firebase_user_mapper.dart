import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/entities/user/user.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser firebaseUser) {
    return firebaseUser == null
        ? null
        : User(
            uid: firebaseUser.uid,
            name: firebaseUser.displayName ?? firebaseUser.email.split('@').first,
            photoUrl: firebaseUser.photoUrl,
            emailAddress: firebaseUser.email,
          );
  }
}