import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure with _$ValueFailure{
  const factory ValueFailure.emailRegex() = EmailRegex;
  const factory ValueFailure.passwordRegex() = PasswordRegex;
}

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}

@freezed
abstract class ExerciseFailure with _$ExerciseFailure{
  const factory ExerciseFailure.unexpected() = Unexpected;  
  const factory ExerciseFailure.unableToUpdate() = UnableToUpdate;  
  const factory ExerciseFailure.insufficientPermissions() = InsufficientPermissions;  
}