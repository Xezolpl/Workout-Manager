import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/measurements/measurements_bloc.dart';

class BodyTextField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final double initValue;
  const BodyTextField(
      {@required this.label, @required this.onChanged, this.initValue, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MeasurementsBloc>(
      create: (context) => getIt<MeasurementsBloc>(),
      child: Container(
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
          initialValue: '${initValue ?? '0.0'}',
          onChanged: onChanged,
        ),
      ),
    );
  }
}
