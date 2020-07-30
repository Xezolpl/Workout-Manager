import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workout_manager/domain/core/x_datetime.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class CalendarWidget extends StatelessWidget {
  final List<Measurement> measurements;

  CalendarWidget(this.measurements, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      calendarController: CalendarController(),
      events: _events,
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        canEventMarkersOverflow: true,
        todayColor: Colors.transparent,
      ),
      onDaySelected: (date, events) {
        Router.navigator.pushNamed(Routes.measurementPage,
            arguments: MeasurementPageArguments(
                editedMeasurement:
                    events.isEmpty ? null : events.first as Measurement,
                date: date));
      },
      builders: CalendarBuilders(
        markersBuilder: (context, date, events, holidays) => [
          Container(
              decoration: BoxDecoration(color: Colors.grey[50]),
              alignment: Alignment.center,
              child: Icon(Icons.accessibility_new,
                  size: 32,
                  color: date.isAtSameDate(DateTime.now())
                      ? Colors.orange
                      : Colors.black)),
        ],
        selectedDayBuilder: (context, date, events) {
          if (date.isAtSameDate(DateTime.now()) && events == null) {
            return Center(
                child: Text('${date.day}',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)));
          } else {
            return Center(child: Text('${date.day}'));
          }
        },
        todayDayBuilder: (context, date, events) {
          return Center(
              child: Text('${date.day}',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17,
                      fontWeight: FontWeight.bold)));
        },
      ),
    );
  }
}
