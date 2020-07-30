import 'package:flutter/material.dart';
import 'package:workout_manager/domain/core/asset_helper.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';
import 'package:workout_manager/presentation/pages/measurement/styled_cancel_done_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseImageDialog extends StatefulWidget {
  ExerciseImageDialog(this.bloc, this.imgPath, {Key key}) : super(key: key);

  Bloc bloc;
  String imgPath;

  @override
  _ExerciseImageDialogState createState() =>
      _ExerciseImageDialogState(bloc, imgPath);
}

class _ExerciseImageDialogState extends State<ExerciseImageDialog> {
  String imgPath;

  _ExerciseImageDialogState(this.bloc, this.imgPath);

  final Bloc bloc;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(20),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: GridView.builder(
                          itemCount: AssetHelper.allWorkoutImgs.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      imgPath =
                                          AssetHelper.allWorkoutImgs[index];
                                    });
                                  },
                                  child: Image.asset(
                                    AssetHelper.allWorkoutImgs[index],
                                    width: 60,
                                    height: 60,
                                  )),
                            );
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          StyledCancelDoneButton(
                              isCancel: true,
                              onPressed: () {
                                _handleClose();
                              }),
                          StyledCancelDoneButton(
                              isCancel: false,
                              onPressed: () {
                                bloc.add(
                                    ExerciseFormEvent.imageChanged(imgPath));
                                _handleClose();
                              }),
                        ],
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: -72,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.amber, width: 3),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: Image.asset(imgPath, width: 60, height: 60)))
          ],
        ));
  }

  void _handleClose() {
    Future.delayed(Duration(milliseconds: 400), () => Navigator.pop(context));
  }
}
