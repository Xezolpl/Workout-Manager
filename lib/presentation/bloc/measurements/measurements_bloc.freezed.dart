// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'measurements_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MeasurementsEventTearOff {
  const _$MeasurementsEventTearOff();

  _Insert insert(Measurement measurement) {
    return _Insert(
      measurement,
    );
  }

  _Update update(Measurement measurement) {
    return _Update(
      measurement,
    );
  }

  _Delete delete(Measurement measurement) {
    return _Delete(
      measurement,
    );
  }

  _Watch watch(DateTime date) {
    return _Watch(
      date,
    );
  }

  _WatchAll watchAll() {
    return const _WatchAll();
  }

  _Received received(OPERATION operation,
      Either<FirebaseFailure, List<Measurement>> failureOrMeasurements) {
    return _Received(
      operation,
      failureOrMeasurements,
    );
  }
}

// ignore: unused_element
const $MeasurementsEvent = _$MeasurementsEventTearOff();

mixin _$MeasurementsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  });
}

abstract class $MeasurementsEventCopyWith<$Res> {
  factory $MeasurementsEventCopyWith(
          MeasurementsEvent value, $Res Function(MeasurementsEvent) then) =
      _$MeasurementsEventCopyWithImpl<$Res>;
}

class _$MeasurementsEventCopyWithImpl<$Res>
    implements $MeasurementsEventCopyWith<$Res> {
  _$MeasurementsEventCopyWithImpl(this._value, this._then);

  final MeasurementsEvent _value;
  // ignore: unused_field
  final $Res Function(MeasurementsEvent) _then;
}

abstract class _$InsertCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) then) =
      __$InsertCopyWithImpl<$Res>;
  $Res call({Measurement measurement});

  $MeasurementCopyWith<$Res> get measurement;
}

class __$InsertCopyWithImpl<$Res> extends _$MeasurementsEventCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(_Insert _value, $Res Function(_Insert) _then)
      : super(_value, (v) => _then(v as _Insert));

  @override
  _Insert get _value => super._value as _Insert;

  @override
  $Res call({
    Object measurement = freezed,
  }) {
    return _then(_Insert(
      measurement == freezed ? _value.measurement : measurement as Measurement,
    ));
  }

  @override
  $MeasurementCopyWith<$Res> get measurement {
    if (_value.measurement == null) {
      return null;
    }
    return $MeasurementCopyWith<$Res>(_value.measurement, (value) {
      return _then(_value.copyWith(measurement: value));
    });
  }
}

class _$_Insert implements _Insert {
  const _$_Insert(this.measurement) : assert(measurement != null);

  @override
  final Measurement measurement;

  @override
  String toString() {
    return 'MeasurementsEvent.insert(measurement: $measurement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Insert &&
            (identical(other.measurement, measurement) ||
                const DeepCollectionEquality()
                    .equals(other.measurement, measurement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(measurement);

  @override
  _$InsertCopyWith<_Insert> get copyWith =>
      __$InsertCopyWithImpl<_Insert>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return insert(measurement);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(measurement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return insert(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class _Insert implements MeasurementsEvent {
  const factory _Insert(Measurement measurement) = _$_Insert;

  Measurement get measurement;
  _$InsertCopyWith<_Insert> get copyWith;
}

abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Measurement measurement});

  $MeasurementCopyWith<$Res> get measurement;
}

class __$UpdateCopyWithImpl<$Res> extends _$MeasurementsEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object measurement = freezed,
  }) {
    return _then(_Update(
      measurement == freezed ? _value.measurement : measurement as Measurement,
    ));
  }

  @override
  $MeasurementCopyWith<$Res> get measurement {
    if (_value.measurement == null) {
      return null;
    }
    return $MeasurementCopyWith<$Res>(_value.measurement, (value) {
      return _then(_value.copyWith(measurement: value));
    });
  }
}

class _$_Update implements _Update {
  const _$_Update(this.measurement) : assert(measurement != null);

  @override
  final Measurement measurement;

  @override
  String toString() {
    return 'MeasurementsEvent.update(measurement: $measurement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.measurement, measurement) ||
                const DeepCollectionEquality()
                    .equals(other.measurement, measurement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(measurement);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return update(measurement);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(measurement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements MeasurementsEvent {
  const factory _Update(Measurement measurement) = _$_Update;

  Measurement get measurement;
  _$UpdateCopyWith<_Update> get copyWith;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Measurement measurement});

  $MeasurementCopyWith<$Res> get measurement;
}

class __$DeleteCopyWithImpl<$Res> extends _$MeasurementsEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object measurement = freezed,
  }) {
    return _then(_Delete(
      measurement == freezed ? _value.measurement : measurement as Measurement,
    ));
  }

  @override
  $MeasurementCopyWith<$Res> get measurement {
    if (_value.measurement == null) {
      return null;
    }
    return $MeasurementCopyWith<$Res>(_value.measurement, (value) {
      return _then(_value.copyWith(measurement: value));
    });
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.measurement) : assert(measurement != null);

  @override
  final Measurement measurement;

  @override
  String toString() {
    return 'MeasurementsEvent.delete(measurement: $measurement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.measurement, measurement) ||
                const DeepCollectionEquality()
                    .equals(other.measurement, measurement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(measurement);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return delete(measurement);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(measurement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MeasurementsEvent {
  const factory _Delete(Measurement measurement) = _$_Delete;

  Measurement get measurement;
  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$WatchCopyWith<$Res> {
  factory _$WatchCopyWith(_Watch value, $Res Function(_Watch) then) =
      __$WatchCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

class __$WatchCopyWithImpl<$Res> extends _$MeasurementsEventCopyWithImpl<$Res>
    implements _$WatchCopyWith<$Res> {
  __$WatchCopyWithImpl(_Watch _value, $Res Function(_Watch) _then)
      : super(_value, (v) => _then(v as _Watch));

  @override
  _Watch get _value => super._value as _Watch;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_Watch(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

class _$_Watch implements _Watch {
  const _$_Watch(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MeasurementsEvent.watch(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Watch &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$WatchCopyWith<_Watch> get copyWith =>
      __$WatchCopyWithImpl<_Watch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return watch(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watch != null) {
      return watch(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return watch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class _Watch implements MeasurementsEvent {
  const factory _Watch(DateTime date) = _$_Watch;

  DateTime get date;
  _$WatchCopyWith<_Watch> get copyWith;
}

abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

class __$WatchAllCopyWithImpl<$Res>
    extends _$MeasurementsEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;
}

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString() {
    return 'MeasurementsEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements MeasurementsEvent {
  const factory _WatchAll() = _$_WatchAll;
}

abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call(
      {OPERATION operation,
      Either<FirebaseFailure, List<Measurement>> failureOrMeasurements});
}

class __$ReceivedCopyWithImpl<$Res>
    extends _$MeasurementsEventCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object operation = freezed,
    Object failureOrMeasurements = freezed,
  }) {
    return _then(_Received(
      operation == freezed ? _value.operation : operation as OPERATION,
      failureOrMeasurements == freezed
          ? _value.failureOrMeasurements
          : failureOrMeasurements as Either<FirebaseFailure, List<Measurement>>,
    ));
  }
}

class _$_Received implements _Received {
  const _$_Received(this.operation, this.failureOrMeasurements)
      : assert(operation != null),
        assert(failureOrMeasurements != null);

  @override
  final OPERATION operation;
  @override
  final Either<FirebaseFailure, List<Measurement>> failureOrMeasurements;

  @override
  String toString() {
    return 'MeasurementsEvent.received(operation: $operation, failureOrMeasurements: $failureOrMeasurements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Received &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.failureOrMeasurements, failureOrMeasurements) ||
                const DeepCollectionEquality().equals(
                    other.failureOrMeasurements, failureOrMeasurements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(failureOrMeasurements);

  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Measurement measurement),
    @required Result update(Measurement measurement),
    @required Result delete(Measurement measurement),
    @required Result watch(DateTime date),
    @required Result watchAll(),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return received(operation, failureOrMeasurements);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Measurement measurement),
    Result update(Measurement measurement),
    Result delete(Measurement measurement),
    Result watch(DateTime date),
    Result watchAll(),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Measurement>> failureOrMeasurements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (received != null) {
      return received(operation, failureOrMeasurements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchAll(_WatchAll value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchAll != null);
    assert(received != null);
    return received(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchAll(_WatchAll value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements MeasurementsEvent {
  const factory _Received(OPERATION operation,
          Either<FirebaseFailure, List<Measurement>> failureOrMeasurements) =
      _$_Received;

  OPERATION get operation;
  Either<FirebaseFailure, List<Measurement>> get failureOrMeasurements;
  _$ReceivedCopyWith<_Received> get copyWith;
}

class _$MeasurementsStateTearOff {
  const _$MeasurementsStateTearOff();

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  Loaded measurementsLoaded(List<Measurement> measurements) {
    return Loaded(
      measurements,
    );
  }

  Success success(OPERATION operation, [Measurement measurement]) {
    return Success(
      operation,
      measurement,
    );
  }

  Failure failure(OPERATION operation, FirebaseFailure failure) {
    return Failure(
      operation,
      failure,
    );
  }
}

// ignore: unused_element
const $MeasurementsState = _$MeasurementsStateTearOff();

mixin _$MeasurementsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result measurementsLoaded(List<Measurement> measurements),
    @required Result success(OPERATION operation, Measurement measurement),
    @required Result failure(OPERATION operation, FirebaseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result measurementsLoaded(List<Measurement> measurements),
    Result success(OPERATION operation, Measurement measurement),
    Result failure(OPERATION operation, FirebaseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result measurementsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result measurementsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  });
}

abstract class $MeasurementsStateCopyWith<$Res> {
  factory $MeasurementsStateCopyWith(
          MeasurementsState value, $Res Function(MeasurementsState) then) =
      _$MeasurementsStateCopyWithImpl<$Res>;
}

class _$MeasurementsStateCopyWithImpl<$Res>
    implements $MeasurementsStateCopyWith<$Res> {
  _$MeasurementsStateCopyWithImpl(this._value, this._then);

  final MeasurementsState _value;
  // ignore: unused_field
  final $Res Function(MeasurementsState) _then;
}

abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

class _$LoadInProgressCopyWithImpl<$Res>
    extends _$MeasurementsStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'MeasurementsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result measurementsLoaded(List<Measurement> measurements),
    @required Result success(OPERATION operation, Measurement measurement),
    @required Result failure(OPERATION operation, FirebaseFailure failure),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result measurementsLoaded(List<Measurement> measurements),
    Result success(OPERATION operation, Measurement measurement),
    Result failure(OPERATION operation, FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result measurementsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result measurementsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements MeasurementsState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Measurement> measurements});
}

class _$LoadedCopyWithImpl<$Res> extends _$MeasurementsStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object measurements = freezed,
  }) {
    return _then(Loaded(
      measurements == freezed
          ? _value.measurements
          : measurements as List<Measurement>,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded(this.measurements) : assert(measurements != null);

  @override
  final List<Measurement> measurements;

  @override
  String toString() {
    return 'MeasurementsState.measurementsLoaded(measurements: $measurements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.measurements, measurements) ||
                const DeepCollectionEquality()
                    .equals(other.measurements, measurements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(measurements);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result measurementsLoaded(List<Measurement> measurements),
    @required Result success(OPERATION operation, Measurement measurement),
    @required Result failure(OPERATION operation, FirebaseFailure failure),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return measurementsLoaded(measurements);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result measurementsLoaded(List<Measurement> measurements),
    Result success(OPERATION operation, Measurement measurement),
    Result failure(OPERATION operation, FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (measurementsLoaded != null) {
      return measurementsLoaded(measurements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result measurementsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return measurementsLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result measurementsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (measurementsLoaded != null) {
      return measurementsLoaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MeasurementsState {
  const factory Loaded(List<Measurement> measurements) = _$Loaded;

  List<Measurement> get measurements;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({OPERATION operation, Measurement measurement});

  $MeasurementCopyWith<$Res> get measurement;
}

class _$SuccessCopyWithImpl<$Res> extends _$MeasurementsStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object operation = freezed,
    Object measurement = freezed,
  }) {
    return _then(Success(
      operation == freezed ? _value.operation : operation as OPERATION,
      measurement == freezed ? _value.measurement : measurement as Measurement,
    ));
  }

  @override
  $MeasurementCopyWith<$Res> get measurement {
    if (_value.measurement == null) {
      return null;
    }
    return $MeasurementCopyWith<$Res>(_value.measurement, (value) {
      return _then(_value.copyWith(measurement: value));
    });
  }
}

class _$Success implements Success {
  const _$Success(this.operation, [this.measurement])
      : assert(operation != null);

  @override
  final OPERATION operation;
  @override
  final Measurement measurement;

  @override
  String toString() {
    return 'MeasurementsState.success(operation: $operation, measurement: $measurement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.measurement, measurement) ||
                const DeepCollectionEquality()
                    .equals(other.measurement, measurement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(measurement);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result measurementsLoaded(List<Measurement> measurements),
    @required Result success(OPERATION operation, Measurement measurement),
    @required Result failure(OPERATION operation, FirebaseFailure failure),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return success(operation, measurement);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result measurementsLoaded(List<Measurement> measurements),
    Result success(OPERATION operation, Measurement measurement),
    Result failure(OPERATION operation, FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(operation, measurement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result measurementsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result measurementsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements MeasurementsState {
  const factory Success(OPERATION operation, [Measurement measurement]) =
      _$Success;

  OPERATION get operation;
  Measurement get measurement;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({OPERATION operation, FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

class _$FailureCopyWithImpl<$Res> extends _$MeasurementsStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object operation = freezed,
    Object failure = freezed,
  }) {
    return _then(Failure(
      operation == freezed ? _value.operation : operation as OPERATION,
      failure == freezed ? _value.failure : failure as FirebaseFailure,
    ));
  }

  @override
  $FirebaseFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FirebaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$Failure implements Failure {
  const _$Failure(this.operation, this.failure)
      : assert(operation != null),
        assert(failure != null);

  @override
  final OPERATION operation;
  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'MeasurementsState.failure(operation: $operation, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(failure);

  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result measurementsLoaded(List<Measurement> measurements),
    @required Result success(OPERATION operation, Measurement measurement),
    @required Result failure(OPERATION operation, FirebaseFailure failure),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return failure(operation, this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result measurementsLoaded(List<Measurement> measurements),
    Result success(OPERATION operation, Measurement measurement),
    Result failure(OPERATION operation, FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(operation, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result measurementsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(measurementsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result measurementsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements MeasurementsState {
  const factory Failure(OPERATION operation, FirebaseFailure failure) =
      _$Failure;

  OPERATION get operation;
  FirebaseFailure get failure;
  $FailureCopyWith<Failure> get copyWith;
}
