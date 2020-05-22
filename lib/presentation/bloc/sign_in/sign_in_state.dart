part of 'sign_in_bloc.dart';

@freezed  
abstract class SignInState with _$SignInState{
  const factory SignInState({
    @required String emailAddress,
    @required String password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        emailAddress: '',
        password: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}