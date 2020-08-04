import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/exercises/exercises_bloc.dart';
import 'package:workout_manager/presentation/pages/widgets/bottom_nav_bar.dart';
import 'package:workout_manager/presentation/pages/widgets/main_loading_indicator.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';
import 'package:workout_manager/presentation/util/input_decorations.dart';

import 'exercise_card.dart';

class ExercisesPage extends StatelessWidget {
  final MainBottomNavBar bNavBar;
  ExercisesPage({@required this.bNavBar});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesBloc>(
        create: (context) =>
            getIt<ExercisesBloc>()..add(ExercisesEvent.watchAllStarted()),
        child: Scaffold(
          bottomNavigationBar: bNavBar,
          body: Container(
            decoration: BoxDecoration(color: Colors.orange[800]),
            child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: SafeArea(
                child: BlocBuilder<ExercisesBloc, ExercisesState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => const MainLoadingIndicator(),
                      loadSuccess: (state) {
                        return Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(color: Colors.grey[50]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  margin: EdgeInsets.only(top: 15, bottom: 5),
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: TextField(
                                    decoration: inputWithSuffixDecoration(
                                        suffixIcon: Icon(Icons.search),
                                        label: 'Search'),
                                    onChanged: (value) {
                                      context
                                          .bloc<ExercisesBloc>()
                                          .add(ExercisesEvent.filtered(value));
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 25, right: 25, bottom: 5),
                                  height: 2,
                                  decoration:
                                      BoxDecoration(color: Colors.orange[800]),
                                ),
                                Expanded(
                                  child: GridView.builder(
                                    itemCount: state.exercises.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.landscape
                                              ? 3
                                              : 2,
                                    ),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: GestureDetector(
                                            onTap: () => bNavBar.changePage(1,
                                                exercise:
                                                    state.exercises[index]),
                                            child: ExerciseCard(
                                                exercise:
                                                    state.exercises[index])),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ));
                      },
                      loadFailure: (state) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text(
                              'An unexpected error occured. Please try to restart the application.'),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
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
