import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/entities/user/user.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:workout_manager/presentation/bloc/measurements/measurements_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

import 'widgets/calendar_widget.dart';
import 'widgets/name_display_row.dart';
import 'widgets/weight_bf_bmi_row.dart';

class AccountPage extends StatelessWidget {
  final Widget bNavBar;
  final User user;

  const AccountPage({@required this.user, @required this.bNavBar, Key key});

  @override
  Widget build(BuildContext context) {
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
          child: BlocBuilder<MeasurementsBloc, MeasurementsState>(
              builder: (context, state) {
            return state.maybeMap(
                loadInProgress: (state) {
                  return CircularProgressIndicator();
                },
                measurementsLoaded: (state) {
                  return ListView(children: [
                    NameDisplayRow(user),
                    WeightBfBmiRow(state.measurements.last),
                    CalendarWidget(state.measurements)
                  ]);
                },
                orElse: () {});
          }),
        ),
      ),
    );
  }
}
