// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'current_workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurrentWorkoutEventTearOff {
  const _$CurrentWorkoutEventTearOff();

  _Changed workoutChanged(Workout newWorkout) {
    return _Changed(
      newWorkout,
    );
  }

  _SeriesInserted seriesInserted() {
    return const _SeriesInserted();
  }

  _SeriesChanged seriesChanged(
      int seriesIndex, WorkoutFields field, String value) {
    return _SeriesChanged(
      seriesIndex,
      field,
      value,
    );
  }

  _SeriesDeleted seriesDeleted(int seriesIndex) {
    return _SeriesDeleted(
      seriesIndex,
    );
  }
}

// ignore: unused_element
const $CurrentWorkoutEvent = _$CurrentWorkoutEventTearOff();

mixin _$CurrentWorkoutEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required
        Result seriesChanged(
            int seriesIndex, WorkoutFields field, String value),
    @required Result seriesDeleted(int seriesIndex),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int seriesIndex, WorkoutFields field, String value),
    Result seriesDeleted(int seriesIndex),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(_Changed value),
    @required Result seriesInserted(_SeriesInserted value),
    @required Result seriesChanged(_SeriesChanged value),
    @required Result seriesDeleted(_SeriesDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutChanged(_Changed value),
    Result seriesInserted(_SeriesInserted value),
    Result seriesChanged(_SeriesChanged value),
    Result seriesDeleted(_SeriesDeleted value),
    @required Result orElse(),
  });
}

abstract class $CurrentWorkoutEventCopyWith<$Res> {
  factory $CurrentWorkoutEventCopyWith(
          CurrentWorkoutEvent value, $Res Function(CurrentWorkoutEvent) then) =
      _$CurrentWorkoutEventCopyWithImpl<$Res>;
}

class _$CurrentWorkoutEventCopyWithImpl<$Res>
    implements $CurrentWorkoutEventCopyWith<$Res> {
  _$CurrentWorkoutEventCopyWithImpl(this._value, this._then);

  final CurrentWorkoutEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentWorkoutEvent) _then;
}

abstract class _$ChangedCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) then) =
      __$ChangedCopyWithImpl<$Res>;
  $Res call({Workout newWorkout});

  $WorkoutCopyWith<$Res> get newWorkout;
}

class __$ChangedCopyWithImpl<$Res>
    extends _$CurrentWorkoutEventCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(_Changed _value, $Res Function(_Changed) _then)
      : super(_value, (v) => _then(v as _Changed));

  @override
  _Changed get _value => super._value as _Changed;

  @override
  $Res call({
    Object newWorkout = freezed,
  }) {
    return _then(_Changed(
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

class _$_Changed implements _Changed {
  const _$_Changed(this.newWorkout) : assert(newWorkout != null);

  @override
  final Workout newWorkout;

  @override
  String toString() {
    return 'CurrentWorkoutEvent.workoutChanged(newWorkout: $newWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Changed &&
            (identical(other.newWorkout, newWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.newWorkout, newWorkout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newWorkout);

  @override
  _$ChangedCopyWith<_Changed> get copyWith =>
      __$ChangedCopyWithImpl<_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required
        Result seriesChanged(
            int seriesIndex, WorkoutFields field, String value),
    @required Result seriesDeleted(int seriesIndex),
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
    Result seriesChanged(int seriesIndex, WorkoutFields field, String value),
    Result seriesDeleted(int seriesIndex),
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
    @required Result workoutChanged(_Changed value),
    @required Result seriesInserted(_SeriesInserted value),
    @required Result seriesChanged(_SeriesChanged value),
    @required Result seriesDeleted(_SeriesDeleted value),
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
    Result workoutChanged(_Changed value),
    Result seriesInserted(_SeriesInserted value),
    Result seriesChanged(_SeriesChanged value),
    Result seriesDeleted(_SeriesDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(this);
    }
    return orElse();
  }
}

abstract class _Changed implements CurrentWorkoutEvent {
  const factory _Changed(Workout newWorkout) = _$_Changed;

  Workout get newWorkout;
  _$ChangedCopyWith<_Changed> get copyWith;
}

abstract class _$SeriesInsertedCopyWith<$Res> {
  factory _$SeriesInsertedCopyWith(
          _SeriesInserted value, $Res Function(_SeriesInserted) then) =
      __$SeriesInsertedCopyWithImpl<$Res>;
}

class __$SeriesInsertedCopyWithImpl<$Res>
    extends _$CurrentWorkoutEventCopyWithImpl<$Res>
    implements _$SeriesInsertedCopyWith<$Res> {
  __$SeriesInsertedCopyWithImpl(
      _SeriesInserted _value, $Res Function(_SeriesInserted) _then)
      : super(_value, (v) => _then(v as _SeriesInserted));

  @override
  _SeriesInserted get _value => super._value as _SeriesInserted;
}

class _$_SeriesInserted implements _SeriesInserted {
  const _$_SeriesInserted();

  @override
  String toString() {
    return 'CurrentWorkoutEvent.seriesInserted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SeriesInserted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required
        Result seriesChanged(
            int seriesIndex, WorkoutFields field, String value),
    @required Result seriesDeleted(int seriesIndex),
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
    Result seriesChanged(int seriesIndex, WorkoutFields field, String value),
    Result seriesDeleted(int seriesIndex),
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
    @required Result workoutChanged(_Changed value),
    @required Result seriesInserted(_SeriesInserted value),
    @required Result seriesChanged(_SeriesChanged value),
    @required Result seriesDeleted(_SeriesDeleted value),
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
    Result workoutChanged(_Changed value),
    Result seriesInserted(_SeriesInserted value),
    Result seriesChanged(_SeriesChanged value),
    Result seriesDeleted(_SeriesDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesInserted != null) {
      return seriesInserted(this);
    }
    return orElse();
  }
}

abstract class _SeriesInserted implements CurrentWorkoutEvent {
  const factory _SeriesInserted() = _$_SeriesInserted;
}

abstract class _$SeriesChangedCopyWith<$Res> {
  factory _$SeriesChangedCopyWith(
          _SeriesChanged value, $Res Function(_SeriesChanged) then) =
      __$SeriesChangedCopyWithImpl<$Res>;
  $Res call({int seriesIndex, WorkoutFields field, String value});
}

class __$SeriesChangedCopyWithImpl<$Res>
    extends _$CurrentWorkoutEventCopyWithImpl<$Res>
    implements _$SeriesChangedCopyWith<$Res> {
  __$SeriesChangedCopyWithImpl(
      _SeriesChanged _value, $Res Function(_SeriesChanged) _then)
      : super(_value, (v) => _then(v as _SeriesChanged));

  @override
  _SeriesChanged get _value => super._value as _SeriesChanged;

  @override
  $Res call({
    Object seriesIndex = freezed,
    Object field = freezed,
    Object value = freezed,
  }) {
    return _then(_SeriesChanged(
      seriesIndex == freezed ? _value.seriesIndex : seriesIndex as int,
      field == freezed ? _value.field : field as WorkoutFields,
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$_SeriesChanged implements _SeriesChanged {
  const _$_SeriesChanged(this.seriesIndex, this.field, this.value)
      : assert(seriesIndex != null),
        assert(field != null),
        assert(value != null);

  @override
  final int seriesIndex;
  @override
  final WorkoutFields field;
  @override
  final String value;

  @override
  String toString() {
    return 'CurrentWorkoutEvent.seriesChanged(seriesIndex: $seriesIndex, field: $field, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesChanged &&
            (identical(other.seriesIndex, seriesIndex) ||
                const DeepCollectionEquality()
                    .equals(other.seriesIndex, seriesIndex)) &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesIndex) ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(value);

  @override
  _$SeriesChangedCopyWith<_SeriesChanged> get copyWith =>
      __$SeriesChangedCopyWithImpl<_SeriesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required
        Result seriesChanged(
            int seriesIndex, WorkoutFields field, String value),
    @required Result seriesDeleted(int seriesIndex),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesChanged(seriesIndex, field, value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int seriesIndex, WorkoutFields field, String value),
    Result seriesDeleted(int seriesIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesChanged != null) {
      return seriesChanged(seriesIndex, field, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(_Changed value),
    @required Result seriesInserted(_SeriesInserted value),
    @required Result seriesChanged(_SeriesChanged value),
    @required Result seriesDeleted(_SeriesDeleted value),
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
    Result workoutChanged(_Changed value),
    Result seriesInserted(_SeriesInserted value),
    Result seriesChanged(_SeriesChanged value),
    Result seriesDeleted(_SeriesDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesChanged != null) {
      return seriesChanged(this);
    }
    return orElse();
  }
}

abstract class _SeriesChanged implements CurrentWorkoutEvent {
  const factory _SeriesChanged(
      int seriesIndex, WorkoutFields field, String value) = _$_SeriesChanged;

  int get seriesIndex;
  WorkoutFields get field;
  String get value;
  _$SeriesChangedCopyWith<_SeriesChanged> get copyWith;
}

abstract class _$SeriesDeletedCopyWith<$Res> {
  factory _$SeriesDeletedCopyWith(
          _SeriesDeleted value, $Res Function(_SeriesDeleted) then) =
      __$SeriesDeletedCopyWithImpl<$Res>;
  $Res call({int seriesIndex});
}

class __$SeriesDeletedCopyWithImpl<$Res>
    extends _$CurrentWorkoutEventCopyWithImpl<$Res>
    implements _$SeriesDeletedCopyWith<$Res> {
  __$SeriesDeletedCopyWithImpl(
      _SeriesDeleted _value, $Res Function(_SeriesDeleted) _then)
      : super(_value, (v) => _then(v as _SeriesDeleted));

  @override
  _SeriesDeleted get _value => super._value as _SeriesDeleted;

  @override
  $Res call({
    Object seriesIndex = freezed,
  }) {
    return _then(_SeriesDeleted(
      seriesIndex == freezed ? _value.seriesIndex : seriesIndex as int,
    ));
  }
}

class _$_SeriesDeleted implements _SeriesDeleted {
  const _$_SeriesDeleted(this.seriesIndex) : assert(seriesIndex != null);

  @override
  final int seriesIndex;

  @override
  String toString() {
    return 'CurrentWorkoutEvent.seriesDeleted(seriesIndex: $seriesIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDeleted &&
            (identical(other.seriesIndex, seriesIndex) ||
                const DeepCollectionEquality()
                    .equals(other.seriesIndex, seriesIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesIndex);

  @override
  _$SeriesDeletedCopyWith<_SeriesDeleted> get copyWith =>
      __$SeriesDeletedCopyWithImpl<_SeriesDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutChanged(Workout newWorkout),
    @required Result seriesInserted(),
    @required
        Result seriesChanged(
            int seriesIndex, WorkoutFields field, String value),
    @required Result seriesDeleted(int seriesIndex),
  }) {
    assert(workoutChanged != null);
    assert(seriesInserted != null);
    assert(seriesChanged != null);
    assert(seriesDeleted != null);
    return seriesDeleted(seriesIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutChanged(Workout newWorkout),
    Result seriesInserted(),
    Result seriesChanged(int seriesIndex, WorkoutFields field, String value),
    Result seriesDeleted(int seriesIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDeleted != null) {
      return seriesDeleted(seriesIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutChanged(_Changed value),
    @required Result seriesInserted(_SeriesInserted value),
    @required Result seriesChanged(_SeriesChanged value),
    @required Result seriesDeleted(_SeriesDeleted value),
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
    Result workoutChanged(_Changed value),
    Result seriesInserted(_SeriesInserted value),
    Result seriesChanged(_SeriesChanged value),
    Result seriesDeleted(_SeriesDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDeleted != null) {
      return seriesDeleted(this);
    }
    return orElse();
  }
}

abstract class _SeriesDeleted implements CurrentWorkoutEvent {
  const factory _SeriesDeleted(int seriesIndex) = _$_SeriesDeleted;

  int get seriesIndex;
  _$SeriesDeletedCopyWith<_SeriesDeleted> get copyWith;
}

class _$CurrentWorkoutStateTearOff {
  const _$CurrentWorkoutStateTearOff();

  _CurrentWorkoutState call(
      {@required Workout workout,
      @required bool showErrorMessages,
      @required int refresher}) {
    return _CurrentWorkoutState(
      workout: workout,
      showErrorMessages: showErrorMessages,
      refresher: refresher,
    );
  }
}

// ignore: unused_element
const $CurrentWorkoutState = _$CurrentWorkoutStateTearOff();

mixin _$CurrentWorkoutState {
  Workout get workout;
  bool get showErrorMessages;
  int get refresher;

  $CurrentWorkoutStateCopyWith<CurrentWorkoutState> get copyWith;
}

abstract class $CurrentWorkoutStateCopyWith<$Res> {
  factory $CurrentWorkoutStateCopyWith(
          CurrentWorkoutState value, $Res Function(CurrentWorkoutState) then) =
      _$CurrentWorkoutStateCopyWithImpl<$Res>;
  $Res call({Workout workout, bool showErrorMessages, int refresher});

  $WorkoutCopyWith<$Res> get workout;
}

class _$CurrentWorkoutStateCopyWithImpl<$Res>
    implements $CurrentWorkoutStateCopyWith<$Res> {
  _$CurrentWorkoutStateCopyWithImpl(this._value, this._then);

  final CurrentWorkoutState _value;
  // ignore: unused_field
  final $Res Function(CurrentWorkoutState) _then;

  @override
  $Res call({
    Object workout = freezed,
    Object showErrorMessages = freezed,
    Object refresher = freezed,
  }) {
    return _then(_value.copyWith(
      workout: workout == freezed ? _value.workout : workout as Workout,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      refresher: refresher == freezed ? _value.refresher : refresher as int,
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

abstract class _$CurrentWorkoutStateCopyWith<$Res>
    implements $CurrentWorkoutStateCopyWith<$Res> {
  factory _$CurrentWorkoutStateCopyWith(_CurrentWorkoutState value,
          $Res Function(_CurrentWorkoutState) then) =
      __$CurrentWorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call({Workout workout, bool showErrorMessages, int refresher});

  @override
  $WorkoutCopyWith<$Res> get workout;
}

class __$CurrentWorkoutStateCopyWithImpl<$Res>
    extends _$CurrentWorkoutStateCopyWithImpl<$Res>
    implements _$CurrentWorkoutStateCopyWith<$Res> {
  __$CurrentWorkoutStateCopyWithImpl(
      _CurrentWorkoutState _value, $Res Function(_CurrentWorkoutState) _then)
      : super(_value, (v) => _then(v as _CurrentWorkoutState));

  @override
  _CurrentWorkoutState get _value => super._value as _CurrentWorkoutState;

  @override
  $Res call({
    Object workout = freezed,
    Object showErrorMessages = freezed,
    Object refresher = freezed,
  }) {
    return _then(_CurrentWorkoutState(
      workout: workout == freezed ? _value.workout : workout as Workout,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      refresher: refresher == freezed ? _value.refresher : refresher as int,
    ));
  }
}

class _$_CurrentWorkoutState implements _CurrentWorkoutState {
  const _$_CurrentWorkoutState(
      {@required this.workout,
      @required this.showErrorMessages,
      @required this.refresher})
      : assert(workout != null),
        assert(showErrorMessages != null),
        assert(refresher != null);

  @override
  final Workout workout;
  @override
  final bool showErrorMessages;
  @override
  final int refresher;

  @override
  String toString() {
    return 'CurrentWorkoutState(workout: $workout, showErrorMessages: $showErrorMessages, refresher: $refresher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentWorkoutState &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality()
                    .equals(other.workout, workout)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.refresher, refresher) ||
                const DeepCollectionEquality()
                    .equals(other.refresher, refresher)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(refresher);

  @override
  _$CurrentWorkoutStateCopyWith<_CurrentWorkoutState> get copyWith =>
      __$CurrentWorkoutStateCopyWithImpl<_CurrentWorkoutState>(
          this, _$identity);
}

abstract class _CurrentWorkoutState implements CurrentWorkoutState {
  const factory _CurrentWorkoutState(
      {@required Workout workout,
      @required bool showErrorMessages,
      @required int refresher}) = _$_CurrentWorkoutState;

  @override
  Workout get workout;
  @override
  bool get showErrorMessages;
  @override
  int get refresher;
  @override
  _$CurrentWorkoutStateCopyWith<_CurrentWorkoutState> get copyWith;
}
