// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call(DateTime birth, double height) {
    return _UserData(
      birth,
      height,
    );
  }
}

// ignore: unused_element
const $UserData = _$UserDataTearOff();

mixin _$UserData {
  DateTime get birth;
  double get height;

  Map<String, dynamic> toJson();
  $UserDataCopyWith<UserData> get copyWith;
}

abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({DateTime birth, double height});
}

class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object birth = freezed,
    Object height = freezed,
  }) {
    return _then(_value.copyWith(
      birth: birth == freezed ? _value.birth : birth as DateTime,
      height: height == freezed ? _value.height : height as double,
    ));
  }
}

abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime birth, double height});
}

class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object birth = freezed,
    Object height = freezed,
  }) {
    return _then(_UserData(
      birth == freezed ? _value.birth : birth as DateTime,
      height == freezed ? _value.height : height as double,
    ));
  }
}

@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(this.birth, this.height)
      : assert(birth != null),
        assert(height != null);

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @override
  final DateTime birth;
  @override
  final double height;

  @override
  String toString() {
    return 'UserData(birth: $birth, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.birth, birth) ||
                const DeepCollectionEquality().equals(other.birth, birth)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(birth) ^
      const DeepCollectionEquality().hash(height);

  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(DateTime birth, double height) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  DateTime get birth;
  @override
  double get height;
  @override
  _$UserDataCopyWith<_UserData> get copyWith;
}
