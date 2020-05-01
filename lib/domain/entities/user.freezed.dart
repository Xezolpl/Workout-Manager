// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required String uid,
      @required String name,
      @required String emailAddress}) {
    return _User(
      uid: uid,
      name: name,
      emailAddress: emailAddress,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get uid;
  String get name;
  String get emailAddress;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String uid, String name, String emailAddress});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      name: name == freezed ? _value.name : name as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String name, String emailAddress});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
  }) {
    return _then(_User(
      uid: uid == freezed ? _value.uid : uid as String,
      name: name == freezed ? _value.name : name as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

class _$_User implements _User {
  const _$_User(
      {@required this.uid, @required this.name, @required this.emailAddress})
      : assert(uid != null),
        assert(name != null),
        assert(emailAddress != null);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String emailAddress;

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String uid,
      @required String name,
      @required String emailAddress}) = _$_User;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get emailAddress;
  @override
  _$UserCopyWith<_User> get copyWith;
}
