import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

abstract class Flushbars {
  static Flushbar createSuccess(
      {@required String message,
      String title = 'Success',
      Duration duration = const Duration(seconds: 2)}) {
    return Flushbar(
      titleText: Text(title,
          style: TextStyle(
              fontSize: 16, color: Colors.green[400], fontWeight: FontWeight.w700)),
      message: message,
      duration: duration,
      icon: Icon(
        Icons.check_circle,
        color: Colors.green[400],
      ),
      shouldIconPulse: false,
      borderRadius: 15,
      backgroundGradient: LinearGradient(colors: [
        Color(
          0xff0F2027,
        ),
        Color(
          0xff203A43,
        ),
        Color(
          0xff2C5364,
        )
      ]),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
    );
  }

  static Flushbar createFailure(
      {@required String message,
      String title = 'Failure',
      Duration duration = const Duration(seconds: 4)}) {
    return Flushbar(
      titleText: Text(title,
          style: TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.w700)),
      message: message,
      duration: duration,
      icon: Icon(
        Icons.error,
        color: Colors.red[700],
      ),
      shouldIconPulse: false,
      borderRadius: 15,
      backgroundGradient: LinearGradient(colors: [
        Color(
          0xff0F2027,
        ),
        Color(
          0xff203A43,
        ),
        Color(
          0xff2C5364,
        )
      ]),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
    );
  }
  
  static Flushbar createInfo(
      {@required String message,
      String title = 'Information',
      Duration duration = const Duration(seconds: 4)}) {
    return Flushbar(
      titleText: Text(title,
          style: TextStyle(
              fontSize: 16, color: Colors.cyan[600], fontWeight: FontWeight.w700)),
      message: message,
      duration: duration,
      icon: Icon(
        Icons.info_outline,
        color: Colors.lightBlue[600],
      ),
      shouldIconPulse: false,
      borderRadius: 15,
      backgroundGradient: LinearGradient(colors: [
        Color(
          0xff0F2027,
        ),
        Color(
          0xff203A43,
        ),
        Color(
          0xff2C5364,
        )
      ]),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
    );
  }
}
