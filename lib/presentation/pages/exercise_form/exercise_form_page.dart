import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';
import 'package:workout_manager/presentation/pages/exercise_form/widgets/exercise_form_scaffold.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class ExerciseFormPage extends StatelessWidget {
  final Exercise editedExercise;

  const ExerciseFormPage({Key key, @required this.editedExercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExerciseFormBloc>()
        ..add(ExerciseFormEvent.initialized(optionOf(editedExercise))),
      child: BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(() {}, (either) {
            either.fold(
                (failure) => FlushbarHelper.createError(
                    message: failure.map(
                      unexpected: (_) =>
                          'Totally unexpected error. Please contact our support. Thank you.',
                      unableToUpdate: (_) =>
                          'Unable to update the exercise. May it been deleted from another device.',
                      insufficientPermissions: (_) =>
                          'Insufficient permissions ❌',
                    ),
                    duration: Duration(seconds: 5)).show(context),
                (_) => Router.navigator.popUntil(
                    (route) => route.settings.name == Routes.mainPage));
          });
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const ExerciseFormScaffold(),
              IgnorePointer(
                ignoring: !state.isSaving,
                child: CircularProgressIndicator(),
              )
            ],
          );
        },
      ),
    );
  }
}


