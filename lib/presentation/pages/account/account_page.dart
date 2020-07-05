import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uuid/uuid.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/domain/entities/user/user.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/measurements/measurements_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class AccountPage extends StatelessWidget {
  final Widget bNavBar;
  const AccountPage({Key key, @required this.bNavBar});

  @override
  Widget build(BuildContext context) {
    final user = User(
      emailAddress: 'Adam@wp.pl',
      name: 'AdamByk',
      photoUrl:
          'https://www.mobafire.com/images/champion/square/tryndamere.png',
      uid: Uuid().v4(),
    );

    return BlocProvider<MeasurementsBloc>(
      create: (context) =>
          getIt<MeasurementsBloc>()..add(MeasurementsEvent.watchAll()),
      child: Scaffold(
        appBar: AppBar(),
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

class NameDisplayRow extends StatelessWidget {
  final User user;
  const NameDisplayRow(this.user, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              user.photoUrl,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  user.emailAddress,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeightBfBmiRow extends StatelessWidget {
  final bool editing;
  final Measurement measurement;
  const WeightBfBmiRow(this.measurement, {Key key, this.editing = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StyledValueContainer(
          titleText: 'Weight',
          valueText: '${measurement.weight}kg',
          color: Color(0xffECEFF1),
          editing: editing,
        ),
        SizedBox(
          width: 3,
        ),
        StyledValueContainer(
          titleText: 'Body Fat',
          valueText: '${measurement.bodyFat}%',
          color: Color(0xffCFD8DC),
          editing: editing,
        ),
        SizedBox(
          width: 3,
        ),
        StyledValueContainer(
          titleText: 'BMI',
          valueText: '${measurement.bmi}',
          color: Color(0xffECEFF1),
          editing: editing,
        ),
      ],
    );
  }
}

class CalendarWidget extends StatelessWidget {
  final List<Measurement> measurements;

  const CalendarWidget(this.measurements, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = CalendarController();
    var _events = Map<DateTime, List<dynamic>>();

    ///There is only one measurement per day.
    measurements.forEach((element) {
      _events.addAll({
        element.date: [element]
      });
    });

    /* Code usable to put workouts into this calendar but it is too much work to do with it
    DateTime sameDateStrike;
    for (int i = 1; i < measurements.length; i++) {
      var thisItem = measurements[i - 1];
      var nextItem = measurements[i];

      if (thisItem.date.isAtSameDate(nextItem.date)) {
        if (sameDateStrike != null) {
          _events.update(sameDateStrike, (value) => value..add(nextItem));
        } else {
          _events.addAll({
            thisItem.date: [thisItem, nextItem]
          });
          sameDateStrike = thisItem.date;
        }
      } else {
        if (sameDateStrike == null) {
          _events.addAll({
            thisItem.date: [thisItem]
          });
        } else {
          sameDateStrike = null;
        }
        if (i == measurements.length - 1) {
          _events.addAll({
            nextItem.date: [nextItem]
          });
        }
      }
    }
    */

    return TableCalendar(
      availableGestures: AvailableGestures.horizontalSwipe,
      initialCalendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarController: _controller,
      events: _events,
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        canEventMarkersOverflow: true,
        todayColor: Colors.cyan[300],
        selectedColor: Colors.orange,
      ),
      onDaySelected: (date, events) {
        Router.navigator.pushNamed(Routes.measurementPage,
            arguments:
                MeasurementPageArguments(measurement: Measurement.empty()));
      },
      builders:
          CalendarBuilders(markersBuilder: (context, date, events, holidays) {
        return [
          Container(
              alignment: Alignment.center,
              child:
                  Icon(Icons.accessibility_new, size: 32, color: Colors.black)),
        ];
      }),
    );
  }
}

class StyledValueContainer extends StatelessWidget {
  final bool editing;
  final Color color;
  final String titleText, valueText;

  const StyledValueContainer(
      {@required this.titleText,
      @required this.valueText,
      this.color,
      this.editing = false,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xff969696),
            width: 1.5,
          ),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$titleText',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ArchivoNarrow'),
            ),
            editing
                ? TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontFamily: 'Signika'),
                  )
                : Text(
                    '$valueText',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontFamily: 'Signika'),
                  ),
          ],
        ),
      ),
    );
  }
}
