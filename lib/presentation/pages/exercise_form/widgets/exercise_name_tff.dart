import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/core/constants/exercise_constants.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';
import 'package:workout_manager/presentation/pages/util/input_decorations.dart';

class ExerciseNameTFF extends StatelessWidget {
  const ExerciseNameTFF({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.exercise.name;
      },
      buildWhen: (p, c) => p.exercise.name != c.exercise.name,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(15),
          child: TextFormField(
            controller: textEditingController,
            decoration: inputWithSuffixDecoration(label: 'Exercise', suffixIcon: Icon(Icons.terrain),),
            maxLength: EXERCISE_NAME_MAX_LENGTH,
            maxLengthEnforced: true,
            buildCounter: (BuildContext,
                    {int currentLength, bool isFocused, int maxLength}) =>
                isFocused
                    ? Text('$currentLength / $EXERCISE_NAME_MAX_LENGTH')
                    : null,
            onChanged: (value) =>
                context.bloc<ExerciseFormBloc>().add(ExerciseFormEvent.nameChanged(value)),
          ),
        );
      },
    );
  }
}
