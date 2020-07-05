import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/exercises/exercises_bloc.dart';
import 'package:workout_manager/presentation/pages/exercises_overview/exercise_party_widget.dart';

class NameWithPartiesRow extends StatelessWidget {
  Exercise exercise;
  NameWithPartiesRow(this.exercise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => getIt<ExercisesBloc>()..add(ExercisesEvent.watchStarted(exercise.id)),
          child: BlocBuilder<ExercisesBloc, ExercisesState>(
          builder: (context, state) {
        state.maybeMap(
            loadSuccess: (state) {
              if (state.exercises != null && state.exercises.isNotEmpty) {
                exercise = state.exercises.first;
              }
            },
            orElse: () {});
        return Row(
          children: [
            Expanded(
              child: Container(
                child: Text(
                  exercise.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff003399)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.07,
              child: Column(
                children: [
                  PartyWidget(exercise.parties[0]),
                  SizedBox(
                    height: 3,
                  ),
                  PartyWidget(exercise.parties[1]),
                  SizedBox(
                    height: 3,
                  ),
                  PartyWidget(exercise.parties[2]),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
