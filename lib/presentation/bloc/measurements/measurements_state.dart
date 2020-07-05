part of 'measurements_bloc.dart';

@freezed
abstract class MeasurementsState with _$MeasurementsState {
  const factory MeasurementsState.loadInProgress() = LoadInProgress;
  const factory MeasurementsState.measurementsLoaded(
      List<Measurement> measurements) = Loaded;

  const factory MeasurementsState.success(OPERATION operation,
      [Measurement measurement]) = Success;
  const factory MeasurementsState.failure(
      OPERATION operation, FirebaseFailure failure) = Failure;
}
