import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/core/regex_validators.dart';
import 'package:workout_manager/domain/repositories/auth_repository.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;

  SignInBloc(this._authRepository);

  @override
  SignInState get initialState => SignInState.initial();

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.email,
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authRepository.signInWithEmailAndPassword,
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authRepository.registerWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authRepository.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess));
      },
    );
  }

  Stream<SignInState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
      String emailAddress,
      String password,
    )
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    if (isEmailValid(state.emailAddress) && isPasswordValid(state.password)) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        state.emailAddress,
        state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
