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
    height: (json['height'] as num)?.toDouble(),
    bmi: (json['bmi'] as num)?.toDouble(),
    parties: (json['parties'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$_$_MeasurementToJson(_$_Measurement instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'weight': instance.weight,
      'bodyFat': instance.bodyFat,
      'height': instance.height,
      'bmi': instance.bmi,
      'parties': instance.parties,
    };
