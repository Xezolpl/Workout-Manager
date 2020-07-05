import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_manager/domain/core/constants/actor_options.dart';
import 'package:workout_manager/domain/core/error/failures.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/domain/entities/workout/workout.dart';
import 'package:workout_manager/domain/repositories/measurement_repository.dart';

part 'measurements_event.dart';
part 'measurements_state.dart';
part 'measurements_bloc.freezed.dart';

@injectable
class MeasurementsBloc extends Bloc<MeasurementsEvent, MeasurementsState> {

  final IMeasurementRepository _repository;

  StreamSubscription<Either<FirebaseFailure, List<Measurement>>>
      _measurementsStreamSubscription;

  MeasurementsBloc(this._repository);

  @override
  MeasurementsState get initialState => MeasurementsState.loadInProgress();

  @override
  Stream<MeasurementsState> mapEventToState(
    MeasurementsEvent event,
  ) async* {
    yield* event.map(
      watch: (e) async* {
        _measurementsStreamSubscription?.cancel();
        _measurementsStreamSubscription = _repository
          .watch(e.date)
          .listen((measurements) =>
              add(MeasurementsEvent.received(OPERATION.WATCH, measurements)));
      },
      watchAll: (e) async* {
        _measurementsStreamSubscription?.cancel();
        _measurementsStreamSubscription = _repository
          .watchAll()
          .listen((measurements) =>
              add(MeasurementsEvent.received(OPERATION.WATCH, measurements)));
      },
      received: (e) async* {
        yield e.failureOrMeasurements.fold(
          (failure) => MeasurementsState.failure(e.operation, failure),
          (measurements) => MeasurementsState.measurementsLoaded(measurements));
      },
      insert: (e) async* {
        final failureOrSuccess = await _repository.insert(e.measurement);
        yield failureOrSuccess.fold(
          (failure) => MeasurementsState.failure(OPERATION.INSERT, failure),
          (_) => MeasurementsState.success(OPERATION.INSERT, e.measurement));
      },
      update: (e) async* {
        final failureOrSuccess = await _repository.update(e.measurement);
        yield failureOrSuccess.fold(
          (failure) => MeasurementsState.failure(OPERATION.UPDATE, failure),
          (_) => MeasurementsState.success(OPERATION.UPDATE, e.measurement));
      },
      delete: (e) async* {
        final failureOrSuccess = await _repository.delete(e.measurement);
        yield failureOrSuccess.fold(
          (failure) => MeasurementsState.failure(OPERATION.DELETE, failure),
          (_) => MeasurementsState.success(OPERATION.DELETE, e.measurement));
      },
    );
  }

  @override
  Future<void> close() async {
    await _measurementsStreamSubscription?.cancel();
    return super.close();
  }
}  

  