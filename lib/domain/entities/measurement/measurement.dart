import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';

@freezed
abstract class Measurement with _$Measurement{
  const factory Measurement({
    @required DateTime date,
    @required double weight,
    @required double bodyFat,
    @required double muscle,
    @required double bmi,
    @required Map<String, double> parties,
  }) = _Measurement;

  factory Measurement.empty() => Measurement(
    date: DateTime.now(),
    weight: 0,
    bodyFat: 0,
    muscle: 0,
    bmi: 0,
    parties: {},
  );

  factory Measurement.fromJson(Map<String, dynamic> json) => _$MeasurementFromJson(json);

}