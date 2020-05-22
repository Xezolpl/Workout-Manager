import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/repositories/exercises_repository.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/bloc/exercises/exercises_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

import 'exercise_card.dart';

class ExercisesPage extends StatelessWidget {
  IExercisesRepository repository;
  Widget bNavBar;
  ExercisesPage(this.repository, this.bNavBar);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) =>
                Router.navigator.pushReplacementNamed(Routes.signInPage),
            orElse: () {},
          );
        },
        child: BlocProvider(
          create: (context) =>
              getIt<ExercisesBloc>()..add(ExercisesEvent.watchAllStarted()),
          child: Scaffold(
            appBar: AppBar(),
            bottomNavigationBar: bNavBar,
            body: BlocBuilder<ExercisesBloc, ExercisesState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadSuccess: (state) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return ExerciseCard(exercise: state.exercises[index]);
                      },
                      itemCount: state.exercises.length,
                    );
                  },
                  loadFailure: (state) {
                    return Container(
                      child: Text('FAILURE'),
                    );
                  },
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Router.navigator.pushNamed(Routes.exerciseFormPage,
                    arguments: ExerciseFormPageArguments(editedExercise: null));
              },
            ),
          ),
        ));
  }
}

class ExercisesPageBody {}
