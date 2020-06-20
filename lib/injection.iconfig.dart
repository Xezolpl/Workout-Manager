// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:workout_manager/infrastructure/data/firebase/firebase_injectable_module.dart';
import 'package:workout_manager/infrastructure/data/firebase/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:workout_manager/infrastructure/repositories/auth_repository_impl.dart';
import 'package:workout_manager/domain/repositories/auth_repository.dart';
import 'package:workout_manager/infrastructure/repositories/exercises_repository_impl.dart';
import 'package:workout_manager/domain/repositories/exercises_repository.dart';
import 'package:workout_manager/infrastructure/repositories/workout_repository_impl.dart';
import 'package:workout_manager/domain/repositories/workout_repository.dart';
import 'package:workout_manager/presentation/bloc/workouts/series_former/series_former_bloc.dart';
import 'package:workout_manager/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:workout_manager/presentation/bloc/workouts/actor/workout_actor_bloc.dart';
import 'package:workout_manager/presentation/bloc/workouts/watcher/workout_watcher_bloc.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';
import 'package:workout_manager/presentation/bloc/exercises/exercises_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerFactory<BottomNavigationBloc>(() => BottomNavigationBloc());
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthRepository>(() => AuthRepositoryImpl(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<FirebaseUserMapper>(),
      ));
  g.registerLazySingleton<IExercisesRepository>(
      () => ExercisesRepositoryImpl(g<Firestore>()));
  g.registerLazySingleton<IWorkoutRepository>(
      () => WorkoutRepositoryImpl(g<Firestore>()));
  g.registerFactory<SeriesFormerBloc>(() => SeriesFormerBloc());
  g.registerFactory<SignInBloc>(() => SignInBloc(g<IAuthRepository>()));
  g.registerFactory<WorkoutActorBloc>(
      () => WorkoutActorBloc(g<IWorkoutRepository>()));
  g.registerFactory<WorkoutWatcherBloc>(
      () => WorkoutWatcherBloc(g<IWorkoutRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthRepository>()));
  g.registerFactory<ExerciseFormBloc>(
      () => ExerciseFormBloc(g<IExercisesRepository>()));
  g.registerFactory<ExercisesBloc>(
      () => ExercisesBloc(g<IExercisesRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
