import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_manager/domain/entities/user/user.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/bloc/measurements/measurements_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';
import 'package:workout_manager/presentation/util/flushbars.dart';

import 'widgets/calendar_widget.dart';
import 'widgets/name_display_row.dart';
import 'widgets/weight_bf_bmi_row.dart';

class AccountPage extends StatelessWidget {
  final Widget bNavBar;
  final User user;

  const AccountPage({@required this.user, @required this.bNavBar, Key key});

  @override
  Widget build(BuildContext context) {
    var measurements = new List();
    return BlocProvider<MeasurementsBloc>(
      create: (context) =>
          getIt<MeasurementsBloc>()..add(MeasurementsEvent.watchAll()),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  context.bloc<AuthBloc>().add(AuthEvent.signedOut());
                  Router.navigator.popAndPushNamed(Routes.splashPage);
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: bNavBar,
        body: Container(
          padding: EdgeInsets.all(5),
          child: BlocConsumer<MeasurementsBloc, MeasurementsState>(
              listenWhen: (p, c) => c is Failure,
              listener: (context, state) => Flushbars.createFailure(
                  message: 'An unexpected error occurred. Sorry.'),
              buildWhen: (p, c) =>
                  (c is Loaded &&
                      (!listEquals(measurements, c.measurements) ||
                          c.measurements.isEmpty)) ||
                  c is LoadInProgress,
              builder: (context, state) {
                return state.maybeMap(
                    loadInProgress: (state) {
                      return CircularProgressIndicator();
                    },
                    measurementsLoaded: (state) {
                      measurements = state.measurements;
                      return ListView(children: [
                        NameDisplayRow(user),
                        WeightBfBmiRow(
                            measurements.isNotEmpty ? measurements.last : null),
                        CalendarWidget(measurements ?? List())
                      ]);
                    },
                    orElse: () {});
              }),
        ),
      ),
    );
  }
}
