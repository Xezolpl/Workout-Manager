// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

class _$WorkoutTearOff {
  const _$WorkoutTearOff();

  _Workout call(
      {@required String id,
      @required String exerciseId,
      @required DateTime date,
      @required int type,
      @required List<String> series}) {
    return _Workout(
      id: id,
      exerciseId: exerciseId,
      date: date,
      type: type,
      series: series,
    );
  }
}

// ignore: unused_element
const $Workout = _$WorkoutTearOff();

mixin _$Workout {
  String get id;
  String get exerciseId;
  DateTime get date;
  int get type;
  List<String> get series;

  Map<String, dynamic> toJson();
  $WorkoutCopyWith<Workout> get copyWith;
}

abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String exerciseId,
      DateTime date,
      int type,
      List<String> series});
}

class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  final Workout _value;
  // ignore: unused_field
  final $Res Function(Workout) _then;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseId = freezed,
    Object date = freezed,
    Object type = freezed,
    Object series = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as String,
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as int,
      series: series == freezed ? _value.series : series as List<String>,
    ));
  }
}

abstract class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) then) =
      __$WorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String exerciseId,
      DateTime date,
      int type,
      List<String> series});
}

class __$WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res>
    implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(_Workout _value, $Res Function(_Workout) _then)
      : super(_value, (v) => _then(v as _Workout));

  @override
  _Workout get _value => super._value as _Workout;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseId = freezed,
    Object date = freezed,
    Object type = freezed,
    Object series = freezed,
  }) {
    return _then(_Workout(
      id: id == freezed ? _value.id : id as String,
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as String,
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as int,
      series: series == freezed ? _value.series : series as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_Workout implements _Workout {
  _$_Workout(
      {@required this.id,
      @required this.exerciseId,
      @required this.date,
      @required this.type,
      @required this.series})
      : assert(id != null),
        assert(exerciseId != null),
        assert(date != null),
        assert(type != null),
        assert(series != null);

  factory _$_Workout.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkoutFromJson(json);

  @override
  final String id;
  @override
  final String exerciseId;
  @override
  final DateTime date;
  @override
  final int type;
  @override
  final List<String> series;

  @override
  String toString() {
    return 'Workout(id: $id, exerciseId: $exerciseId, date: $date, type: $type, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Workout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(series);

  @override
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkoutToJson(this);
  }
}

abstract class _Workout implements Workout {
  factory _Workout(
      {@required String id,
      @required String exerciseId,
      @required DateTime date,
      @required int type,
      @required List<String> series}) = _$_Workout;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$_Workout.fromJson;

  @override
  String get id;
  @override
  String get exerciseId;
  @override
  DateTime get date;
  @override
  int get type;
  @override
  List<String> get series;
  @override
  _$WorkoutCopyWith<_Workout> get copyWith;
}
