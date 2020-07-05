// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$_$_UserDataFromJson(Map<String, dynamic> json) {
  return _$_UserData(
    json['birth'] == null ? null : DateTime.parse(json['birth'] as String),
    (json['height'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'birth': instance.birth?.toIso8601String(),
      'height': instance.height,
    };
