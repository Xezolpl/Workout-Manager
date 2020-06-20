// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'series_former_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SeriesFormerEventTearOff {
  const _$SeriesFormerEventTearOff();

  WorkoutChanged workoutChanged(Workout newWorkout) {
    return WorkoutChanged(
      newWorkout,
    );
  }

  Inserted seriesInserted() {
    return const Inserted();
  }

  Changed seriesChanged(int index, String encodedSeries) {
    return Changed(
      index,
      encodedSeries,
    );
  }

  Deleted seriesDeleted(int index) {
    return Deleted(
      index,
    );
  }
}

// ignore: unused_element
const $SeriesFormerEvent = _$SeriesFormerEventTearOff();

mixin _$SeriesFormerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required Result seriesChanged(int index, String encodedSeries),
    @required Result seriesDeleted(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int index, String encodedSeries),
    Result seriesDeleted(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(WorkoutChanged value),
    @required Result seriesInserted(Inserted value),
    @required Result seriesChanged(Changed value),
    @required Result seriesDeleted(Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutChanged(WorkoutChanged value),
    Result seriesInserted(Inserted value),
    Result seriesChanged(Changed value),
    Result seriesDeleted(Deleted value),
    @required Result orElse(),
  });
}

abstract class $SeriesFormerEventCopyWith<$Res> {
  factory $SeriesFormerEventCopyWith(
          SeriesFormerEvent value, $Res Function(SeriesFormerEvent) then) =
      _$SeriesFormerEventCopyWithImpl<$Res>;
}

class _$SeriesFormerEventCopyWithImpl<$Res>
    implements $SeriesFormerEventCopyWith<$Res> {
  _$SeriesFormerEventCopyWithImpl(this._value, this._then);

  final SeriesFormerEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesFormerEvent) _then;
}

abstract class $WorkoutChangedCopyWith<$Res> {
  factory $WorkoutChangedCopyWith(
          WorkoutChanged value, $Res Function(WorkoutChanged) then) =
      _$WorkoutChangedCopyWithImpl<$Res>;
  $Res call({Workout newWorkout});

  $WorkoutCopyWith<$Res> get newWorkout;
}

class _$WorkoutChangedCopyWithImpl<$Res>
    extends _$SeriesFormerEventCopyWithImpl<$Res>
    implements $WorkoutChangedCopyWith<$Res> {
  _$WorkoutChangedCopyWithImpl(
      WorkoutChanged _value, $Res Function(WorkoutChanged) _then)
      : super(_value, (v) => _then(v as WorkoutChanged));

  @override
  WorkoutChanged get _value => super._value as WorkoutChanged;

  @override
  $Res call({
    Object newWorkout = freezed,
  }) {
    return _then(WorkoutChanged(
      newWorkout == freezed ? _value.newWorkout : newWorkout as Workout,
    ));
  }

  @override
  $WorkoutCopyWith<$Res> get newWorkout {
    if (_value.newWorkout == null) {
      return null;
    }
    return $WorkoutCopyWith<$Res>(_value.newWorkout, (value) {
      return _then(_value.copyWith(newWorkout: value));
    });
  }
}

class _$WorkoutChanged implements WorkoutChanged {
  const _$WorkoutChanged(this.newWorkout) : assert(newWorkout != null);

  @override
  final Workout newWorkout;

  @override
  String toString() {
    return 'SeriesFormerEvent.workoutChanged(newWorkout: $newWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WorkoutChanged &&
            (identical(other.newWorkout, newWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.newWorkout, newWorkout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newWorkout);

  @override
  $WorkoutChangedCopyWith<WorkoutChanged> get copyWith =>
      _$WorkoutChangedCopyWithImpl<WorkoutChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required Result seriesChanged(int index, String encodedSeries),
    @required Result seriesDeleted(int index),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return workoutChanged(newWorkout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int index, String encodedSeries),
    Result seriesDeleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(newWorkout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(WorkoutChanged value),
    @required Result seriesInserted(Inserted value),
    @required Result seriesChanged(Changed value),
    @required Result seriesDeleted(Deleted value),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return workoutChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutChanged(WorkoutChanged value),
    Result seriesInserted(Inserted value),
    Result seriesChanged(Changed value),
    Result seriesDeleted(Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(this);
    }
    return orElse();
  }
}

abstract class WorkoutChanged implements SeriesFormerEvent {
  const factory WorkoutChanged(Workout newWorkout) = _$WorkoutChanged;

  Workout get newWorkout;
  $WorkoutChangedCopyWith<WorkoutChanged> get copyWith;
}

abstract class $InsertedCopyWith<$Res> {
  factory $InsertedCopyWith(Inserted value, $Res Function(Inserted) then) =
      _$InsertedCopyWithImpl<$Res>;
}

class _$InsertedCopyWithImpl<$Res> extends _$SeriesFormerEventCopyWithImpl<$Res>
    implements $InsertedCopyWith<$Res> {
  _$InsertedCopyWithImpl(Inserted _value, $Res Function(Inserted) _then)
      : super(_value, (v) => _then(v as Inserted));

  @override
  Inserted get _value => super._value as Inserted;
}

class _$Inserted implements Inserted {
  const _$Inserted();

  @override
  String toString() {
    return 'SeriesFormerEvent.seriesInserted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Inserted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required Result seriesChanged(int index, String encodedSeries),
    @required Result seriesDeleted(int index),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesInserted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int index, String encodedSeries),
    Result seriesDeleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesInserted != null) {
      return seriesInserted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(WorkoutChanged value),
    @required Result seriesInserted(Inserted value),
    @required Result seriesChanged(Changed value),
    @required Result seriesDeleted(Deleted value),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesInserted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutChanged(WorkoutChanged value),
    Result seriesInserted(Inserted value),
    Result seriesChanged(Changed value),
    Result seriesDeleted(Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesInserted != null) {
      return seriesInserted(this);
    }
    return orElse();
  }
}

abstract class Inserted implements SeriesFormerEvent {
  const factory Inserted() = _$Inserted;
}

abstract class $ChangedCopyWith<$Res> {
  factory $ChangedCopyWith(Changed value, $Res Function(Changed) then) =
      _$ChangedCopyWithImpl<$Res>;
  $Res call({int index, String encodedSeries});
}

class _$ChangedCopyWithImpl<$Res> extends _$SeriesFormerEventCopyWithImpl<$Res>
    implements $ChangedCopyWith<$Res> {
  _$ChangedCopyWithImpl(Changed _value, $Res Function(Changed) _then)
      : super(_value, (v) => _then(v as Changed));

  @override
  Changed get _value => super._value as Changed;

  @override
  $Res call({
    Object index = freezed,
    Object encodedSeries = freezed,
  }) {
    return _then(Changed(
      index == freezed ? _value.index : index as int,
      encodedSeries == freezed ? _value.encodedSeries : encodedSeries as String,
    ));
  }
}

class _$Changed implements Changed {
  const _$Changed(this.index, this.encodedSeries)
      : assert(index != null),
        assert(encodedSeries != null);

  @override
  final int index;
  @override
  final String encodedSeries;

  @override
  String toString() {
    return 'SeriesFormerEvent.seriesChanged(index: $index, encodedSeries: $encodedSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Changed &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.encodedSeries, encodedSeries) ||
                const DeepCollectionEquality()
                    .equals(other.encodedSeries, encodedSeries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(encodedSeries);

  @override
  $ChangedCopyWith<Changed> get copyWith =>
      _$ChangedCopyWithImpl<Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required Result seriesChanged(int index, String encodedSeries),
    @required Result seriesDeleted(int index),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesChanged(index, encodedSeries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int index, String encodedSeries),
    Result seriesDeleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesChanged != null) {
      return seriesChanged(index, encodedSeries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(WorkoutChanged value),
    @required Result seriesInserted(Inserted value),
    @required Result seriesChanged(Changed value),
    @required Result seriesDeleted(Deleted value),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutChanged(WorkoutChanged value),
    Result seriesInserted(Inserted value),
    Result seriesChanged(Changed value),
    Result seriesDeleted(Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesChanged != null) {
      return seriesChanged(this);
    }
    return orElse();
  }
}

abstract class Changed implements SeriesFormerEvent {
  const factory Changed(int index, String encodedSeries) = _$Changed;

  int get index;
  String get encodedSeries;
  $ChangedCopyWith<Changed> get copyWith;
}

abstract class $DeletedCopyWith<$Res> {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) then) =
      _$DeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$DeletedCopyWithImpl<$Res> extends _$SeriesFormerEventCopyWithImpl<$Res>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(Deleted _value, $Res Function(Deleted) _then)
      : super(_value, (v) => _then(v as Deleted));

  @override
  Deleted get _value => super._value as Deleted;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(Deleted(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$Deleted implements Deleted {
  const _$Deleted(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'SeriesFormerEvent.seriesDeleted(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Deleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $DeletedCopyWith<Deleted> get copyWith =>
      _$DeletedCopyWithImpl<Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required Result seriesChanged(int index, String encodedSeries),
    @required Result seriesDeleted(int index),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesDeleted(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int index, String encodedSeries),
    Result seriesDeleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDeleted != null) {
      return seriesDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(WorkoutChanged value),
    @required Result seriesInserted(Inserted value),
    @required Result seriesChanged(Changed value),
    @required Result seriesDeleted(Deleted value),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutChanged(WorkoutChanged value),
    Result seriesInserted(Inserted value),
    Result seriesChanged(Changed value),
    Result seriesDeleted(Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDeleted != null) {
      return seriesDeleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements SeriesFormerEvent {
  const factory Deleted(int index) = _$Deleted;

  int get index;
  $DeletedCopyWith<Deleted> get copyWith;
}

class _$SeriesFormerStateTearOff {
  const _$SeriesFormerStateTearOff();

  _SeriesFormerState call(
      {@required Workout workout,
      @required Option<ValueFailure> failureOption}) {
    return _SeriesFormerState(
      workout: workout,
      failureOption: failureOption,
    );
  }
}

// ignore: unused_element
const $SeriesFormerState = _$SeriesFormerStateTearOff();

mixin _$SeriesFormerState {
  Workout get workout;
  Option<ValueFailure> get failureOption;

  $SeriesFormerStateCopyWith<SeriesFormerState> get copyWith;
}

abstract class $SeriesFormerStateCopyWith<$Res> {
  factory $SeriesFormerStateCopyWith(
          SeriesFormerState value, $Res Function(SeriesFormerState) then) =
      _$SeriesFormerStateCopyWithImpl<$Res>;
  $Res call({Workout workout, Option<ValueFailure> failureOption});

  $WorkoutCopyWith<$Res> get workout;
}

class _$SeriesFormerStateCopyWithImpl<$Res>
    implements $SeriesFormerStateCopyWith<$Res> {
  _$SeriesFormerStateCopyWithImpl(this._value, this._then);

  final SeriesFormerState _value;
  // ignore: unused_field
  final $Res Function(SeriesFormerState) _then;

  @override
  $Res call({
    Object workout = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      workout: workout == freezed ? _value.workout : workout as Workout,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ValueFailure>,
    ));
  }

  @override
  $WorkoutCopyWith<$Res> get workout {
    if (_value.workout == null) {
      return null;
    }
    return $WorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

abstract class _$SeriesFormerStateCopyWith<$Res>
    implements $SeriesFormerStateCopyWith<$Res> {
  factory _$SeriesFormerStateCopyWith(
          _SeriesFormerState value, $Res Function(_SeriesFormerState) then) =
      __$SeriesFormerStateCopyWithImpl<$Res>;
  @override
  $Res call({Workout workout, Option<ValueFailure> failureOption});

  @override
  $WorkoutCopyWith<$Res> get workout;
}

class __$SeriesFormerStateCopyWithImpl<$Res>
    extends _$SeriesFormerStateCopyWithImpl<$Res>
    implements _$SeriesFormerStateCopyWith<$Res> {
  __$SeriesFormerStateCopyWithImpl(
      _SeriesFormerState _value, $Res Function(_SeriesFormerState) _then)
      : super(_value, (v) => _then(v as _SeriesFormerState));

  @override
  _SeriesFormerState get _value => super._value as _SeriesFormerState;

  @override
  $Res call({
    Object workout = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_SeriesFormerState(
      workout: workout == freezed ? _value.workout : workout as Workout,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ValueFailure>,
    ));
  }
}

class _$_SeriesFormerState implements _SeriesFormerState {
  const _$_SeriesFormerState(
      {@required this.workout, @required this.failureOption})
      : assert(workout != null),
        assert(failureOption != null);

  @override
  final Workout workout;
  @override
  final Option<ValueFailure> failureOption;

  @override
  String toString() {
    return 'SeriesFormerState(workout: $workout, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesFormerState &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality()
                    .equals(other.workout, workout)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(failureOption);

  @override
  _$SeriesFormerStateCopyWith<_SeriesFormerState> get copyWith =>
      __$SeriesFormerStateCopyWithImpl<_SeriesFormerState>(this, _$identity);
}

abstract class _SeriesFormerState implements SeriesFormerState {
  const factory _SeriesFormerState(
      {@required Workout workout,
      @required Option<ValueFailure> failureOption}) = _$_SeriesFormerState;

  @override
  Workout get workout;
  @override
  Option<ValueFailure> get failureOption;
  @override
  _$SeriesFormerStateCopyWith<_SeriesFormerState> get copyWith;
}
