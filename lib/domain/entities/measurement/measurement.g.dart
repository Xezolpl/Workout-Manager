// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Measurement _$_$_MeasurementFromJson(Map<String, dynamic> json) {
  return _$_Measurement(
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    weight: (json['weight'] as num)?.toDouble(),
    bodyFat: (json['bodyFat'] as num)?.toDouble(),
    muscle: (json['muscle'] as num)?.toDouble(),
    bmi: (json['bmi'] as num)?.toDouble(),
    parties: (json['parties'] as Map<dynamic, dynamic>)?.map(
      (k, e) => MapEntry(k as String, (e as num)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$_$_MeasurementToJson(_$_Measurement instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'weight': instance.weight,
      'bodyFat': instance.bodyFat,
      'muscle': instance.muscle,
      'bmi': instance.bmi,
      'parties': instance.parties,
    };
