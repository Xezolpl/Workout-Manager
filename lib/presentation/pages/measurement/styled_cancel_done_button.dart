import 'package:flutter/material.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class StyledCancelDoneButton extends StatelessWidget {
  final bool isCancel;
  final Function() onPressed;
  const StyledCancelDoneButton(
      {@required this.isCancel, @required this.onPressed, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 40,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Color(0xff999999)),
        ),
        child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            highlightColor: isCancel ? Colors.red[200] : Colors.green[200],
            onPressed: onPressed,
            child: Text(
              isCancel ? 'Cancel' : 'Done',
              textAlign: TextAlign.center,
            )));
  }
}
