import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
abstract class Exercise with _$Exercise {
  factory Exercise({
    @required String id,
    @required String name,
    @required String description,
    @required List<String> parties,
  }) = _Exercise;

  factory Exercise.empty() =>
      Exercise(id: Uuid().v4().toString(), name: '', description: '', parties: [
        'Chest',
        'None',
        'None',
      ]);

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
