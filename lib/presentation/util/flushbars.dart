import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';

abstract class Flushbars {
  static Flushbar createSuccess(
      {@required String message,
      String title = 'Success',
      Duration duration = const Duration(seconds: 2)}) {
    return Flushbar(
      titleText: Text(title,
          style: TextStyle(
              fontSize: 16,
              color: Colors.green[400],
              fontWeight: FontWeight.w700)),
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
              fontSize: 16,
              color: Colors.cyan[600],
              fontWeight: FontWeight.w700)),
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

  static Flushbar createEventsDisplay({
    @required BuildContext context,
    @required String message,
    @required List<dynamic> events,
    String title = 'Events',
  }) {
    return Flushbar(
      titleText: Text(title,
          style: TextStyle(
              fontSize: 16,
              color: Colors.cyan[600],
              fontWeight: FontWeight.w700)),
      message: message,
      duration: Duration(days: 1),
      icon: Icon(
        Icons.event_note,
        color: Colors.lightBlue[600],
      ),
      backgroundColor: Colors.transparent,
      shouldIconPulse: false,
      flushbarStyle: FlushbarStyle.GROUNDED,
      userInputForm: Form(
          child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            border: Border.all(width: 3, color: Colors.blueGrey[800]),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                    ))),
            Column(
              children: events
                  .map((e) => e is Measurement
                      ? MeasurementWidget()
                      : WorkoutWidget(amount: 3))
                  .toList(),
            )
          ],
        ),
      )),
    );
  }
}

class MeasurementWidget extends StatelessWidget {
  const MeasurementWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), border: Border.all()),
      child: Row(
        children: [
          Icon(
            Icons.accessibility_new,
            color: Colors.deepPurple,
            size: 40,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Measurements',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class WorkoutWidget extends StatelessWidget {
  final int amount;
  const WorkoutWidget({@required this.amount, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(Icons.fitness_center, color: Colors.blue[700]),
          Text(
            'Workout ($amount exercises)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
