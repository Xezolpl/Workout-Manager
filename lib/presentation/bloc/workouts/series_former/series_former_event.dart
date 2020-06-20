part of 'series_former_bloc.dart';

@freezed
abstract class SeriesFormerEvent with _$SeriesFormerEvent {
  const factory SeriesFormerEvent.workoutChanged(Workout newWorkout) = WorkoutChanged;
  const factory SeriesFormerEvent.seriesInserted() = Inserted;
  const factory SeriesFormerEvent.seriesChanged(int index, String encodedSeries) = Changed;
  const factory SeriesFormerEvent.seriesDeleted(int index) = Deleted;
}
