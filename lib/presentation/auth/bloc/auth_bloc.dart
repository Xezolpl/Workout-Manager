import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/entities/user.dart';
import 'package:workout_manager/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;

  AuthBloc(this._authRepository);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      final userOption = await _authRepository.getSignedInUser();
      yield userOption.fold(() => const AuthState.unauthenticated(),
          (u) => AuthState.authenticated(u));
    }, signedOut: (e) async* {
      await _authRepository.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
