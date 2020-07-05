import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/measurements/measurements_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class MeasurementPage extends StatelessWidget {
  const MeasurementPage({this.measurement, Key key}) : super(key: key);

  final Measurement measurement;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MeasurementsBloc>(
      create: (context) => getIt<MeasurementsBloc>()
        ..add(MeasurementsEvent.watch(measurement.date)),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BodyTextField('Weight (kg)'),
                      BodyTextField('Bodyfat (%)'),
                      BodyTextField('Muscle (%)'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BodyTextField('Arms'),
                      BodyTextField('Calves'),
                      BodyTextField('Chest'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BodyTextField('Forearms'),
                      BodyTextField('Hips'),
                      BodyTextField('Neck'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BodyTextField('Shoulders'),
                      BodyTextField('Thights'),
                      BodyTextField('Waist'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StyledCancelDoneFlatButton(
                        isCancel: true,
                        onPressed: () {},
                      ),
                      StyledCancelDoneFlatButton(
                        isCancel: false,
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class BodyTextField extends StatelessWidget {
  final String label;
  const BodyTextField(this.label, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Color(0xff999999)),
          borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.27,
      padding: EdgeInsets.all(0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: label, contentPadding: EdgeInsets.all(4)),
        maxLines: 1,
        initialValue: '0.0',
      ),
    );
  }
}

class StyledCancelDoneFlatButton extends StatelessWidget {
  final bool isCancel;
  final Function() onPressed;
  const StyledCancelDoneFlatButton(
      {@required this.isCancel, @required this.onPressed, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
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
            onPressed: () {
              onPressed();
              Future.delayed(Duration(milliseconds: 400), () {
                Router.navigator.popUntil(
                    (route) => route.settings.name == Routes.mainPage);
              });
            },
            child: Text(
              'Done',
              textAlign: TextAlign.center,
            )));
  }
}
