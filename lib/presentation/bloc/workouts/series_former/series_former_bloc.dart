import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/workout.dart';

part 'series_former_event.dart';
part 'series_former_state.dart';
part 'series_former_bloc.freezed.dart';

@injectable
class SeriesFormerBloc extends Bloc<SeriesFormerEvent, SeriesFormerState> {
  @override
  SeriesFormerState get initialState => SeriesFormerState.initial();

  @override
  Stream<SeriesFormerState> mapEventToState(
    SeriesFormerEvent event,
  ) async* {
    yield* event.map(
       workoutChanged: (e) async* {
      yield state.copyWith(workout: e.newWorkout);
    }, seriesInserted: (e) async* {
      yield state..workout.series.add('-1:-1:-1');
    }, seriesChanged: (e) async* {
      yield state..workout.series.replaceRange(e.index, e.index, [e.encodedSeries]);
    }, seriesDeleted: (e) async* {
      yield state..workout.series.removeAt(e.index);
    });
  }
}
