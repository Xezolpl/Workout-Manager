// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$_$_WorkoutFromJson(Map<String, dynamic> json) {
  return _$_Workout(
    id: json['id'] as String,
    exerciseId: json['exerciseId'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    series: (json['series'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_WorkoutToJson(_$_Workout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exerciseId': instance.exerciseId,
      'date': instance.date?.toIso8601String(),
      'series': instance.series,
    };
