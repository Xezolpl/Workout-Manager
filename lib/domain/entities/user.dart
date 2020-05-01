import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String uid,
    @required String name,
    @required String emailAddress,
  }) = _User;
}