import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_manager/domain/core/workout_coder.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/domain/entities/workout.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/workouts/actor/workout_actor_bloc.dart';
import 'package:workout_manager/presentation/bloc/workouts/series_former/series_former_bloc.dart';
import 'package:workout_manager/presentation/bloc/workouts/watcher/workout_watcher_bloc.dart';
import 'package:workout_manager/presentation/pages/exercises_overview/exercise_party_widget.dart';
import 'package:workout_manager/presentation/pages/widgets/fancy_loading_square.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class WorkoutPage extends StatelessWidget {
  final Widget bNavBar;
  final Exercise exercise;
  const WorkoutPage({Key key, @required this.bNavBar, @required this.exercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Workout selectedWorkout;

    return MultiBlocProvider(
      providers: [
        BlocProvider<WorkoutActorBloc>(
            create: (context) => getIt<WorkoutActorBloc>()),
        BlocProvider<SeriesFormerBloc>(
          create: (context) => getIt<SeriesFormerBloc>(),
        ),
        BlocProvider<WorkoutWatcherBloc>(
            create: (context) => getIt<WorkoutWatcherBloc>()
              ..add(WorkoutWatcherEvent.watchByExerciseStarted(exercise.id))),
      ],
      child: BlocListener<WorkoutActorBloc, WorkoutActorState>(
        listener: (context, state) {
          Router.navigator
              .popUntil((route) => route.settings.name == Routes.mainPage);
          state.maybeMap(
            loadedWorkout: (state) {
              selectedWorkout = state.currentWorkout;
              context
                ..bloc<SeriesFormerBloc>()
                    .add(SeriesFormerEvent.workoutChanged(selectedWorkout))
                ..bloc<WorkoutWatcherBloc>()
                    .add(WorkoutWatcherEvent.workoutChanged(selectedWorkout));
            },
            actionInProgress: (_) => showDialog(
                context: context, builder: (context) => FancyLoadingSquare()),
            orElse: () {},
          );
        },
        child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Router.navigator.pushNamed(Routes.exerciseFormPage,
                        arguments: ExerciseFormPageArguments(
                            editedExercise: exercise));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.save),
                  onPressed: () {
                    if (selectedWorkout != null) {
                      showDialog(
                        context: context,
                        builder: (context) => FancyLoadingSquare(),
                      );
                      context
                        ..bloc<WorkoutActorBloc>()
                            .add(WorkoutActorEvent.saved(selectedWorkout));
                    }
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete_forever),
                  onPressed: () {
                    if (selectedWorkout != null) {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Delete workout'),
                              content: Text(
                                  'Do you really want to delete this workout?'),
                              actions: [
                                FlatButton(
                                  child: Text('No'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                FlatButton(
                                  child: Text('Yes',
                                      style: TextStyle(
                                        color: Colors.red,
                                      )),
                                  onPressed: () {
                                    context.bloc<WorkoutActorBloc>()
                                      ..add(WorkoutActorEvent.deleted(
                                          selectedWorkout));
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                    }
                  },
                ),
              ],
            ),
            bottomNavigationBar: bNavBar,
            body: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  NameWithPartiesRow(exercise),
                  WorkoutsDropdownList(exercise),
                  Expanded(
                    child: WorkoutSeriesList(),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class NameWithPartiesRow extends StatelessWidget {
  final Exercise exercise;
  const NameWithPartiesRow(this.exercise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              exercise.name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff003399)),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.07,
          child: Column(
            children: [
              PartyWidget(exercise.parties[0]),
              SizedBox(
                height: 3,
              ),
              PartyWidget(exercise.parties[1]),
              SizedBox(
                height: 3,
              ),
              PartyWidget(exercise.parties[2]),
            ],
          ),
        ),
      ],
    );
  }
}

class WorkoutsDropdownList extends StatelessWidget {
  final Exercise exercise;
  const WorkoutsDropdownList(this.exercise, {Key key}) : super(key: key);

  String formatDate(DateTime d) {
    String day = d.day < 10 ? '0${d.day}' : '${d.day}';
    String month = d.month < 10 ? '0${d.month}' : '${d.month}';
    String year = '${d.year}';

    String hour = d.hour < 10 ? '0${d.hour}' : '${d.hour}';
    String minute = d.minute < 10 ? '0${d.minute}' : '${d.minute}';
    return day + '.' + month + '.' + year + ' - ' + hour + ':' + minute;
  }

  @override
  Widget build(BuildContext context) {
    DateTime pickedDate;
    Workout selectedWorkout;
    List<Workout> allWorkouts = [];

    Widget _workoutsDropdownButton() => DropdownButton<Workout>(
        value: selectedWorkout,
        items: allWorkouts
            .map((e) => DropdownMenuItem<Workout>(
                child: Text(formatDate(e.date)), value: e))
            .toList()
              ..sort((item1, item2) =>
                  item1.value.date.compareTo(item2.value.date)),
        onChanged: (Workout workout) {
          context
            ..bloc<WorkoutActorBloc>().add(WorkoutActorEvent.changed(workout));
        });

    return Container(
      child: Center(
          child: Row(
        children: [
          Expanded(
            child: Container(
              child: BlocBuilder<WorkoutWatcherBloc, WorkoutWatcherState>(
                  builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadedCurrWorkout: (state) {
                    selectedWorkout = state.currWorkout;
                    return _workoutsDropdownButton();
                  },
                  loadInProgress: (state) => CircularProgressIndicator(),
                  loadSuccess: (state) {
                    allWorkouts = state.workouts;
                    if (selectedWorkout == null && state.workouts.isNotEmpty) {
                      selectedWorkout = state.workouts.first;
                      context
                          .bloc<WorkoutActorBloc>()
                          .add(WorkoutActorEvent.changed(selectedWorkout));
                    }
                    return _workoutsDropdownButton();
                  },
                  loadFailure: (state) => Text(state.noteFailure.maybeMap(
                    insufficientPermissions: (_) =>
                        'Inssufficient permissions.',
                    orElse: () =>
                        'An unexpected error occurred during workouts loading. Please contact us to resolve your problem.',
                  )),
                );
              }),
            ),
          ),
          IconButton(
              onPressed: () {
                Workout newWorkout =
                    Workout.empty().copyWith(exerciseId: exercise.id);
                if (pickedDate != null) {
                  newWorkout = newWorkout.copyWith(date: pickedDate);
                }
                context.bloc<WorkoutActorBloc>()
                  ..add(WorkoutActorEvent.added(newWorkout))
                  ..add(WorkoutActorEvent.changed(newWorkout));
              },
              icon: Icon(Icons.add_box)),
          IconButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now())
                    .then((date) {
                  pickedDate = date;
                  showTimePicker(context: context, initialTime: TimeOfDay.now())
                      .then((time) => pickedDate = pickedDate.add(Duration(
                            hours: time.hour,
                            minutes: time.minute,
                          )));
                });
              },
              icon: Icon(Icons.date_range)),
        ],
      )),
    );
  }
}

class WorkoutSeriesList extends StatelessWidget {
  const WorkoutSeriesList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext _) {
    List<String> series = [];

    return BlocBuilder<SeriesFormerBloc, SeriesFormerState>(
      condition: (p, c) => (!listEquals(p.workout.series, c.workout.series)),
      builder: (context, state) {
        series = state.workout.series;
        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black87),
              borderRadius: BorderRadius.circular(20)),
          child: ListView.separated(
            separatorBuilder: (c, i) => i == 0
                ? Divider(
                    color: Colors.amber,
                  )
                : Divider(),
            itemCount: series.length + 2,
            itemBuilder: (BuildContext _, int index) {
              if (index == 0) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Icon(
                          Icons.format_list_numbered,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 5,
                        child: Container(width: 60, child: Text('Weight'))),
                    Expanded(
                        flex: 5,
                        child: Container(width: 60, child: Text('Reps'))),
                    Expanded(
                        flex: 5,
                        child:
                            Container(width: 60, child: Text('Duration (s)'))),
                  ],
                );
              } else if (index == series.length + 1) {
                return FlatButton(
                  child: Text('ADD NEW SERIES'),
                  onPressed: () {
                    context.bloc<SeriesFormerBloc>()
                      ..add(SeriesFormerEvent.seriesInserted());
                  },
                );
              } else {
                return Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.red, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 30,
                          child: Text(
                            '$index',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child:
                              SeriesTextField(WorkoutFields.Weight, index - 1)),
                      Expanded(
                          flex: 5,
                          child:
                              SeriesTextField(WorkoutFields.Reps, index - 1)),
                      Expanded(
                          flex: 5,
                          child: SeriesTextField(
                              WorkoutFields.Duration, index - 1)),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}

class SeriesTextField extends StatelessWidget {
  final WorkoutFields field;
  final int index;

  const SeriesTextField(this.field, this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    Series seriesData;
    return BlocBuilder<SeriesFormerBloc, SeriesFormerState>(
      condition: (p, c) => (seriesData == null && c.workout != null),
      builder: (context, state) {
        seriesData = WorkoutCoder.decode(state.workout.series[index]);
        if (field == WorkoutFields.Weight) {
          textEditingController.text =
              seriesData.weight == -1 ? '' : seriesData.weight.toString();
        } else if (field == WorkoutFields.Reps) {
          textEditingController.text =
              seriesData.reps == -1 ? '' : seriesData.reps.toString();
        } else {
          textEditingController.text =
              seriesData.duration == -1 ? '' : seriesData.duration.toString();
        }
        return Container(
          width: 60,
          child: TextField(
              controller: textEditingController,
              keyboardType: TextInputType.number,
              maxLines: 1,
              maxLength: 6,
              decoration: InputDecoration(),
              onChanged: (value) {
                String encodedStr = WorkoutCoder.encode(
                  weight: field == WorkoutFields.Weight
                      ? int.parse(value)
                      : seriesData.weight,
                  reps: field == WorkoutFields.Reps
                      ? int.parse(value)
                      : seriesData.reps,
                  duration: field == WorkoutFields.Duration
                      ? int.parse(value)
                      : seriesData.duration,
                );
                context.bloc<SeriesFormerBloc>()
                  ..add(SeriesFormerEvent.seriesChanged(index, encodedStr));
              }),
        );
      },
    );
  }
}
