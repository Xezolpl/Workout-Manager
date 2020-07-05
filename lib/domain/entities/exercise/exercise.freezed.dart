// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {@required String id,
      @required String name,
      @required String description,
      @required String imgUrl,
      @required List<String> parties}) {
    return _Exercise(
      id: id,
      name: name,
      description: description,
      imgUrl: imgUrl,
      parties: parties,
    );
  }
}

// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

mixin _$Exercise {
  String get id;
  String get name;
  String get description;
  String get imgUrl;
  List<String> get parties;

  Map<String, dynamic> toJson();
  $ExerciseCopyWith<Exercise> get copyWith;
}

abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String imgUrl,
      List<String> parties});
}

class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imgUrl = freezed,
    Object parties = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imgUrl: imgUrl == freezed ? _value.imgUrl : imgUrl as String,
      parties: parties == freezed ? _value.parties : parties as List<String>,
    ));
  }
}

abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      String imgUrl,
      List<String> parties});
}

class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imgUrl = freezed,
    Object parties = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imgUrl: imgUrl == freezed ? _value.imgUrl : imgUrl as String,
      parties: parties == freezed ? _value.parties : parties as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_Exercise implements _Exercise {
  _$_Exercise(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.parties})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(imgUrl != null),
        assert(parties != null);

  factory _$_Exercise.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imgUrl;
  @override
  final List<String> parties;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, description: $description, imgUrl: $imgUrl, parties: $parties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.parties, parties) ||
                const DeepCollectionEquality().equals(other.parties, parties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(parties);

  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseToJson(this);
  }
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
      {@required String id,
      @required String name,
      @required String description,
      @required String imgUrl,
      @required List<String> parties}) = _$_Exercise;

  factory _Exercise.fromJson(Map<String, dynamic> json) = _$_Exercise.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imgUrl;
  @override
  List<String> get parties;
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
