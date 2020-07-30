import 'package:flutter/material.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'exercise_image_dialog.dart';

class ExerciseImageSelection extends StatelessWidget {
  final String imgPath;

  const ExerciseImageSelection(
    this.imgPath, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.amber, width: 3),
              borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 20, bottom: 5),
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => showDialog(
                context: context,
                child: ExerciseImageDialog(
                  context.bloc<ExerciseFormBloc>(),
                  imgPath,
                )),
            child: Image.asset(
              imgPath,
              width: 60,
              height: 60,
            ),
          )),
    );
  }
}
