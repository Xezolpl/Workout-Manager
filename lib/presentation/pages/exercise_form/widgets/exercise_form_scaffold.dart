import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/core/constants/exercise_constants.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';
import 'package:workout_manager/presentation/pages/exercise_form/widgets/exercise_description_tff.dart';

import 'exercise_name_tff.dart';
import 'exercise_primary_party_selector.dart';

class ExerciseFormScaffold extends StatelessWidget {
  const ExerciseFormScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                context
                    .bloc<ExerciseFormBloc>()
                    .add(const ExerciseFormEvent.saved());
              },
            );
          }),
        ],
        title: BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
          condition: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) =>
              Text(state.isEditing ? 'Edit an exercise' : 'Create an exercise'),
        ),
      ),
      body: BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
        condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
              autovalidate: state.showErrorMessages,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                      child: SizedBox(
                    height: 12,
                  )),
                  SliverToBoxAdapter(child: ExerciseNameTFF()),
                  SliverToBoxAdapter(child: ExerciseDescriptionTFF()),
                  SliverToBoxAdapter(
                      child: ExercisePartySelector(index: 0)),
                  SliverToBoxAdapter(
                      child: SizedBox(
                    height: 16,
                  )),
                  SliverToBoxAdapter(
                      child: Text(
                    "Secondary parties",
                    style: TextStyle(
                        color: Colors.black38, fontSize: 20, letterSpacing: 2),
                    textAlign: TextAlign.center,
                  )),
                  SliverToBoxAdapter(
                      child: Divider(
                    height: 2,
                    color: Colors.black38,
                    indent: 18,
                    endIndent: 18,
                  )),
                  SliverToBoxAdapter(
                      child: ExercisePartySelector(index: 1)),
                  SliverToBoxAdapter(
                      child: ExercisePartySelector(index: 2)),
                ],
              ));
        },
      ),
    );
  }
}
