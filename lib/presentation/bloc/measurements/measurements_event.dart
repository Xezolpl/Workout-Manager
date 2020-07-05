part of 'measurements_bloc.dart';

@freezed
abstract class MeasurementsEvent with _$MeasurementsEvent {
  const factory MeasurementsEvent.insert(Measurement measurement) = _Insert;
  const factory MeasurementsEvent.update(Measurement measurement) = _Update;
  const factory MeasurementsEvent.delete(Measurement measurement) = _Delete;

  const factory MeasurementsEvent.watch(DateTime date) = _Watch;
  const factory MeasurementsEvent.watchAll() = _WatchAll;
  const factory MeasurementsEvent.received(OPERATION operation,
      Either<FirebaseFailure, List<Measurement>> failureOrMeasurements) = _Received;
}
