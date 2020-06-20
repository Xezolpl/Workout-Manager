part of 'series_former_bloc.dart';

@freezed
abstract class SeriesFormerState with _$SeriesFormerState {
  const factory SeriesFormerState({
    @required Workout workout,
    @required Option<ValueFailure> failureOption,
  }) = _SeriesFormerState;

  factory SeriesFormerState.initial() => SeriesFormerState(
    workout: Workout.empty(),
    failureOption: none(),
  );
}