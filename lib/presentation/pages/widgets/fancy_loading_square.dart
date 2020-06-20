import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class FancyLoadingSquare extends StatelessWidget {
  const FancyLoadingSquare({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
        child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue),
                child: CircularProgressIndicator(),
              ),
              FadingText('Saving...'),
            ]));
  }
}
