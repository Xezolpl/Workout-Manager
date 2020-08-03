import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/measurements/measurements_bloc.dart';
import 'package:workout_manager/presentation/pages/measurement/body_text_field.dart';
import 'package:workout_manager/presentation/pages/measurement/styled_cancel_done_button.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';
import 'package:workout_manager/presentation/util/flushbars.dart';

class MeasurementPage extends StatelessWidget {
  final DateTime date;
  const MeasurementPage({this.editedMeasurement, this.date, Key key})
      : super(key: key);

  final Measurement editedMeasurement;

  @override
  Widget build(BuildContext context) {
    Measurement measurement = Measurement.empty();
    bool isEditing = editedMeasurement != null;

    if (isEditing) {
      measurement = editedMeasurement;
    }

    return BlocProvider<MeasurementsBloc>(
      create: (context) => getIt<MeasurementsBloc>(),
      child: BlocConsumer<MeasurementsBloc, MeasurementsState>(
          listener: (context, state) {
        state.maybeMap(
            success: (state) => Flushbars.createSuccess(
                message:
                    'Successfully ${isEditing ? 'created a new' : 'edited the'} measurement'),
            failure: (state) => Flushbars.createFailure(
                message: state.failure.map(
                    unexpected: (_) => 'Unexpected error occured.',
                    unableToUpdate: (_) => 'Unable to update the measurement.',
                    insufficientPermissions: (_) =>
                        'Insufficient permissions.')).show(context),
            orElse: () {});
      }, builder: (context, state) {
        return Scaffold(
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
                        BodyTextField(
                            label: 'Weight (kg)',
                            onChanged: (value) {
                              measurement = measurement.copyWith(
                                  weight: double.parse(value));
                            },
                            initValue:
                                isEditing ? editedMeasurement.weight : null),
                        BodyTextField(
                            label: 'Body fat (%)',
                            onChanged: (value) {
                              measurement = measurement.copyWith(
                                  bodyFat: double.parse(value));
                            },
                            initValue:
                                isEditing ? editedMeasurement.bodyFat : null),
                        BodyTextField(
                            label: 'Height (cm)',
                            onChanged: (value) {
                              measurement = measurement.copyWith(
                                  height: double.parse(value));
                            },
                            initValue:
                                isEditing ? editedMeasurement.height : null),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BodyTextField(
                            label: 'Arms',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'arms', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['arms']
                                : null),
                        BodyTextField(
                            label: 'Calves',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'calves', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['calves']
                                : null),
                        BodyTextField(
                            label: 'Chest',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'chest', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['chest']
                                : null),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BodyTextField(
                            label: 'Forearms',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update('forearms',
                                        (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['forearms']
                                : null),
                        BodyTextField(
                            label: 'Hips',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'hips', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['hips']
                                : null),
                        BodyTextField(
                            label: 'Neck',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'neck', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['neck']
                                : null),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BodyTextField(
                            label: 'Shoulders',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update('shoulders',
                                        (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['shoulders']
                                : null),
                        BodyTextField(
                            label: 'Thights',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'thights', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['thights']
                                : null),
                        BodyTextField(
                            label: 'Waist',
                            onChanged: (value) {
                              measurement.copyWith(
                                  parties: measurement.parties
                                    ..update(
                                        'waist', (_) => double.parse(value)));
                            },
                            initValue: isEditing
                                ? editedMeasurement.parties['waist']
                                : null),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StyledCancelDoneButton(
                          isCancel: true,
                          onPressed: () {
                            Router.navigator.popUntil((route) =>
                                route.settings.name == Routes.mainPage);
                          },
                        ),
                        StyledCancelDoneButton(
                          isCancel: false,
                          onPressed: () {
                            try {
                              measurement = measurement.copyWith(
                                bmi: measurement.weight /
                                    pow(measurement.height / 100, 2),
                              );
                            } on Exception catch (e) {}
                            if (editedMeasurement == null) {
                              context.bloc<MeasurementsBloc>().add(
                                  MeasurementsEvent.insert(measurement.copyWith(
                                      date: date ?? DateTime.now())));
                            } else {
                              context.bloc<MeasurementsBloc>().add(
                                  MeasurementsEvent.update(measurement.copyWith(
                                      date: editedMeasurement.date)));
                            }
                            Router.navigator.popUntil((route) =>
                                route.settings.name == Routes.mainPage);
                          },
                        )
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
