import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/exercises/exercises_bloc.dart';
import 'package:workout_manager/presentation/pages/widgets/bottom_nav_bar.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

import 'exercise_card.dart';

class ExercisesPage extends StatelessWidget {
  final MainBottomNavBar bNavBar;
  ExercisesPage({@required this.bNavBar});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<ExercisesBloc>()..add(ExercisesEvent.watchAllStarted()),
        child: Scaffold(
          bottomNavigationBar: bNavBar,
          body: BlocBuilder<ExercisesBloc, ExercisesState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadSuccess: (state) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 3
                            : 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                            onTap: () => bNavBar.changePage(1,
                                exercise: state.exercises[index]),
                            child:
                                ExerciseCard(exercise: state.exercises[index])),
                      );
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
            child: Center(child: Icon(Icons.add)),
          ),
        ));
  }
}
