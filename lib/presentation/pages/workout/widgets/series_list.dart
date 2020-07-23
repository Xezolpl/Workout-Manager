import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/core/workout_coder.dart';
import 'package:workout_manager/presentation/bloc/workouts/current_workout/current_workout_bloc.dart';

class SeriesList extends StatelessWidget {
  const SeriesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black87),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.fromLTRB(8, 10, 8, 5),
      child: ListView(
        children: [
          SeriesHeaderRow(),
          SeriesColumn(),
          AddSeriesButton(),
        ],
      ),
    );
  }
}

class SeriesHeaderRow extends StatelessWidget {
  const SeriesHeaderRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(flex: 2, child: Icon(Icons.format_list_numbered)),
        Expanded(
          flex: 5,
          child: Text(
            'Weight',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            'Reps',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            'Duration',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class SeriesColumn extends StatelessWidget {
  const SeriesColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentWorkoutBloc, CurrentWorkoutState>(
      condition: (p, c) =>
          p.workout.id == '' ||
          p.workout.id != c.workout.id ||
          p.workout.series.length != c.workout.series.length,
      builder: (context, state) {
        int idx = -1;
        return Column(
          children: state.workout.series.map<Widget>((encodedSeries) {
            idx += 1;
            return SingleSeriesRecord(encodedSeries, idx);
          }).toList(),
        );
      },
    );
  }
}

class SingleSeriesRecord extends StatelessWidget {
  final String encodedSeries;
  final int index;
  const SingleSeriesRecord(this.encodedSeries, this.index, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Series series = WorkoutCoder.decode(encodedSeries);
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(5),
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.amber),
              ),
              child: Text('${index + 1}'),
            ),
          ),
          SeriesInputField(series.weight, WorkoutFields.Weight, index),
          SeriesInputField(series.reps, WorkoutFields.Reps, index),
          SeriesInputField(series.duration, WorkoutFields.Duration, index),
        ],
      ),
    );
  }
}

class SeriesInputField extends StatelessWidget {
  final num initValue;
  final WorkoutFields field;
  final int seriesIndex;
  const SeriesInputField(this.initValue, this.field, this.seriesIndex,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        TextEditingController(text: '${initValue == -1 ? '' : initValue}');

    return Expanded(
      flex: 5,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(hintText: '0'),
        onChanged: (value) {
          context.bloc<CurrentWorkoutBloc>().add(
              CurrentWorkoutEvent.seriesChanged(seriesIndex, field, value));
        },
      ),
    );
  }
}

class AddSeriesButton extends StatelessWidget {
  const AddSeriesButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: FlatButton(
        child: Text('ADD NEW SERIES'),
        onPressed: () {
          context
              .bloc<CurrentWorkoutBloc>()
              .add(CurrentWorkoutEvent.seriesInserted());
        },
      ),
    );
  }
}
