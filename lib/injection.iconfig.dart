// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:workout_manager/infrastructure/data/firebase/firebase_injectable_module.dart';
import 'package:workout_manager/infrastructure/data/firebase/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:workout_manager/infrastructure/repositories/auth_repository_impl.dart';
import 'package:workout_manager/domain/repositories/auth_repository.dart';
import 'package:workout_manager/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:workout_manager/presentation/auth/bloc/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<SignInBloc>(() => SignInBloc(g<IAuthRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAuthRepository>(() => AuthRepositoryImpl(
          g<FirebaseAuth>(),
          g<GoogleSignIn>(),
          g<FirebaseUserMapper>(),
        ));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
