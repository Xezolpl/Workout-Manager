import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:workout_manager/domain/core/constants/exercise_constants.dart';
import 'package:workout_manager/domain/core/workout_coder.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
abstract class Workout with _$Workout {
  factory Workout({
    @required String id,
    @required String exerciseId,
    @required DateTime date,
    @required int type,
    @required List<String> series,
  }) = _Workout;

  factory Workout.empty() => Workout(
    id: Uuid().v4().toString(),
    exerciseId: '',
    date: DateTime.now(),
    type: WORKOUT_OPTIONS.WeightRepsDuration.index, // 'WRD', 'WR', 'RD', 'D', 'R' // W-WEITGHT, R-REPS, D-DURATION
    series: [], // W:R:D jak czegos nie ma to "-", D w sekundach
  );

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);
}
