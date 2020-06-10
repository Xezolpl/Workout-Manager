// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workouts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutsEventTearOff {
  const _$WorkoutsEventTearOff();

  _Initialized initialized(Exercise exercise) {
    return _Initialized(
      exercise,
    );
  }

  _WatchByExerciseStarted watchByExerciseStarted(String exerciseId) {
    return _WatchByExerciseStarted(
      exerciseId,
    );
  }

  _WorkoutsReceived workoutsReceived(
      Either<FirebaseFailure, List<Workout>> failuresOrWorkouts) {
    return _WorkoutsReceived(
      failuresOrWorkouts,
    );
  }

  _WorkoutSeriesChanged workoutChanged(int seriesIndex, String encodedSeries) {
    return _WorkoutSeriesChanged(
      seriesIndex,
      encodedSeries,
    );
  }

  _WorkoutSaved workoutSaved() {
    return const _WorkoutSaved();
  }

  _WorkoutDeleted workoutDeleted() {
    return const _WorkoutDeleted();
  }
}

// ignore: unused_element
const $WorkoutsEvent = _$WorkoutsEventTearOff();

mixin _$WorkoutsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  });
}

abstract class $WorkoutsEventCopyWith<$Res> {
  factory $WorkoutsEventCopyWith(
          WorkoutsEvent value, $Res Function(WorkoutsEvent) then) =
      _$WorkoutsEventCopyWithImpl<$Res>;
}

class _$WorkoutsEventCopyWithImpl<$Res>
    implements $WorkoutsEventCopyWith<$Res> {
  _$WorkoutsEventCopyWithImpl(this._value, this._then);

  final WorkoutsEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutsEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$InitializedCopyWithImpl<$Res> extends _$WorkoutsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_Initialized(
      exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    if (_value.exercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.exercise) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'WorkoutsEvent.initialized(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return initialized(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements WorkoutsEvent {
  const factory _Initialized(Exercise exercise) = _$_Initialized;

  Exercise get exercise;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$WatchByExerciseStartedCopyWith<$Res> {
  factory _$WatchByExerciseStartedCopyWith(_WatchByExerciseStarted value,
          $Res Function(_WatchByExerciseStarted) then) =
      __$WatchByExerciseStartedCopyWithImpl<$Res>;
  $Res call({String exerciseId});
}

class __$WatchByExerciseStartedCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res>
    implements _$WatchByExerciseStartedCopyWith<$Res> {
  __$WatchByExerciseStartedCopyWithImpl(_WatchByExerciseStarted _value,
      $Res Function(_WatchByExerciseStarted) _then)
      : super(_value, (v) => _then(v as _WatchByExerciseStarted));

  @override
  _WatchByExerciseStarted get _value => super._value as _WatchByExerciseStarted;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_WatchByExerciseStarted(
      exerciseId == freezed ? _value.exerciseId : exerciseId as String,
    ));
  }
}

class _$_WatchByExerciseStarted implements _WatchByExerciseStarted {
  const _$_WatchByExerciseStarted(this.exerciseId) : assert(exerciseId != null);

  @override
  final String exerciseId;

  @override
  String toString() {
    return 'WorkoutsEvent.watchByExerciseStarted(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchByExerciseStarted &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  _$WatchByExerciseStartedCopyWith<_WatchByExerciseStarted> get copyWith =>
      __$WatchByExerciseStartedCopyWithImpl<_WatchByExerciseStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return watchByExerciseStarted(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByExerciseStarted != null) {
      return watchByExerciseStarted(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return watchByExerciseStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByExerciseStarted != null) {
      return watchByExerciseStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchByExerciseStarted implements WorkoutsEvent {
  const factory _WatchByExerciseStarted(String exerciseId) =
      _$_WatchByExerciseStarted;

  String get exerciseId;
  _$WatchByExerciseStartedCopyWith<_WatchByExerciseStarted> get copyWith;
}

abstract class _$WorkoutsReceivedCopyWith<$Res> {
  factory _$WorkoutsReceivedCopyWith(
          _WorkoutsReceived value, $Res Function(_WorkoutsReceived) then) =
      __$WorkoutsReceivedCopyWithImpl<$Res>;
  $Res call({Either<FirebaseFailure, List<Workout>> failuresOrWorkouts});
}

class __$WorkoutsReceivedCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res>
    implements _$WorkoutsReceivedCopyWith<$Res> {
  __$WorkoutsReceivedCopyWithImpl(
      _WorkoutsReceived _value, $Res Function(_WorkoutsReceived) _then)
      : super(_value, (v) => _then(v as _WorkoutsReceived));

  @override
  _WorkoutsReceived get _value => super._value as _WorkoutsReceived;

  @override
  $Res call({
    Object failuresOrWorkouts = freezed,
  }) {
    return _then(_WorkoutsReceived(
      failuresOrWorkouts == freezed
          ? _value.failuresOrWorkouts
          : failuresOrWorkouts as Either<FirebaseFailure, List<Workout>>,
    ));
  }
}

class _$_WorkoutsReceived implements _WorkoutsReceived {
  const _$_WorkoutsReceived(this.failuresOrWorkouts)
      : assert(failuresOrWorkouts != null);

  @override
  final Either<FirebaseFailure, List<Workout>> failuresOrWorkouts;

  @override
  String toString() {
    return 'WorkoutsEvent.workoutsReceived(failuresOrWorkouts: $failuresOrWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutsReceived &&
            (identical(other.failuresOrWorkouts, failuresOrWorkouts) ||
                const DeepCollectionEquality()
                    .equals(other.failuresOrWorkouts, failuresOrWorkouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failuresOrWorkouts);

  @override
  _$WorkoutsReceivedCopyWith<_WorkoutsReceived> get copyWith =>
      __$WorkoutsReceivedCopyWithImpl<_WorkoutsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutsReceived(failuresOrWorkouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsReceived != null) {
      return workoutsReceived(failuresOrWorkouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsReceived != null) {
      return workoutsReceived(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsReceived implements WorkoutsEvent {
  const factory _WorkoutsReceived(
          Either<FirebaseFailure, List<Workout>> failuresOrWorkouts) =
      _$_WorkoutsReceived;

  Either<FirebaseFailure, List<Workout>> get failuresOrWorkouts;
  _$WorkoutsReceivedCopyWith<_WorkoutsReceived> get copyWith;
}

abstract class _$WorkoutSeriesChangedCopyWith<$Res> {
  factory _$WorkoutSeriesChangedCopyWith(_WorkoutSeriesChanged value,
          $Res Function(_WorkoutSeriesChanged) then) =
      __$WorkoutSeriesChangedCopyWithImpl<$Res>;
  $Res call({int seriesIndex, String encodedSeries});
}

class __$WorkoutSeriesChangedCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res>
    implements _$WorkoutSeriesChangedCopyWith<$Res> {
  __$WorkoutSeriesChangedCopyWithImpl(
      _WorkoutSeriesChanged _value, $Res Function(_WorkoutSeriesChanged) _then)
      : super(_value, (v) => _then(v as _WorkoutSeriesChanged));

  @override
  _WorkoutSeriesChanged get _value => super._value as _WorkoutSeriesChanged;

  @override
  $Res call({
    Object seriesIndex = freezed,
    Object encodedSeries = freezed,
  }) {
    return _then(_WorkoutSeriesChanged(
      seriesIndex == freezed ? _value.seriesIndex : seriesIndex as int,
      encodedSeries == freezed ? _value.encodedSeries : encodedSeries as String,
    ));
  }
}

class _$_WorkoutSeriesChanged implements _WorkoutSeriesChanged {
  const _$_WorkoutSeriesChanged(this.seriesIndex, this.encodedSeries)
      : assert(seriesIndex != null),
        assert(encodedSeries != null);

  @override
  final int seriesIndex;
  @override
  final String encodedSeries;

  @override
  String toString() {
    return 'WorkoutsEvent.workoutChanged(seriesIndex: $seriesIndex, encodedSeries: $encodedSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutSeriesChanged &&
            (identical(other.seriesIndex, seriesIndex) ||
                const DeepCollectionEquality()
                    .equals(other.seriesIndex, seriesIndex)) &&
            (identical(other.encodedSeries, encodedSeries) ||
                const DeepCollectionEquality()
                    .equals(other.encodedSeries, encodedSeries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesIndex) ^
      const DeepCollectionEquality().hash(encodedSeries);

  @override
  _$WorkoutSeriesChangedCopyWith<_WorkoutSeriesChanged> get copyWith =>
      __$WorkoutSeriesChangedCopyWithImpl<_WorkoutSeriesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutChanged(seriesIndex, encodedSeries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(seriesIndex, encodedSeries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSeriesChanged implements WorkoutsEvent {
  const factory _WorkoutSeriesChanged(int seriesIndex, String encodedSeries) =
      _$_WorkoutSeriesChanged;

  int get seriesIndex;
  String get encodedSeries;
  _$WorkoutSeriesChangedCopyWith<_WorkoutSeriesChanged> get copyWith;
}

abstract class _$WorkoutSavedCopyWith<$Res> {
  factory _$WorkoutSavedCopyWith(
          _WorkoutSaved value, $Res Function(_WorkoutSaved) then) =
      __$WorkoutSavedCopyWithImpl<$Res>;
}

class __$WorkoutSavedCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res>
    implements _$WorkoutSavedCopyWith<$Res> {
  __$WorkoutSavedCopyWithImpl(
      _WorkoutSaved _value, $Res Function(_WorkoutSaved) _then)
      : super(_value, (v) => _then(v as _WorkoutSaved));

  @override
  _WorkoutSaved get _value => super._value as _WorkoutSaved;
}

class _$_WorkoutSaved implements _WorkoutSaved {
  const _$_WorkoutSaved();

  @override
  String toString() {
    return 'WorkoutsEvent.workoutSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutSaved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutSaved != null) {
      return workoutSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutSaved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutSaved != null) {
      return workoutSaved(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSaved implements WorkoutsEvent {
  const factory _WorkoutSaved() = _$_WorkoutSaved;
}

abstract class _$WorkoutDeletedCopyWith<$Res> {
  factory _$WorkoutDeletedCopyWith(
          _WorkoutDeleted value, $Res Function(_WorkoutDeleted) then) =
      __$WorkoutDeletedCopyWithImpl<$Res>;
}

class __$WorkoutDeletedCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res>
    implements _$WorkoutDeletedCopyWith<$Res> {
  __$WorkoutDeletedCopyWithImpl(
      _WorkoutDeleted _value, $Res Function(_WorkoutDeleted) _then)
      : super(_value, (v) => _then(v as _WorkoutDeleted));

  @override
  _WorkoutDeleted get _value => super._value as _WorkoutDeleted;
}

class _$_WorkoutDeleted implements _WorkoutDeleted {
  const _$_WorkoutDeleted();

  @override
  String toString() {
    return 'WorkoutsEvent.workoutDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Exercise exercise),
    @required Result watchByExerciseStarted(String exerciseId),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    @required Result workoutChanged(int seriesIndex, String encodedSeries),
    @required Result workoutSaved(),
    @required Result workoutDeleted(),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutDeleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Exercise exercise),
    Result watchByExerciseStarted(String exerciseId),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failuresOrWorkouts),
    Result workoutChanged(int seriesIndex, String encodedSeries),
    Result workoutSaved(),
    Result workoutDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutDeleted != null) {
      return workoutDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutsReceived(_WorkoutsReceived value),
    @required Result workoutChanged(_WorkoutSeriesChanged value),
    @required Result workoutSaved(_WorkoutSaved value),
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(initialized != null);
    assert(watchByExerciseStarted != null);
    assert(workoutsReceived != null);
    assert(workoutChanged != null);
    assert(workoutSaved != null);
    assert(workoutDeleted != null);
    return workoutDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutsReceived(_WorkoutsReceived value),
    Result workoutChanged(_WorkoutSeriesChanged value),
    Result workoutSaved(_WorkoutSaved value),
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutDeleted != null) {
      return workoutDeleted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutDeleted implements WorkoutsEvent {
  const factory _WorkoutDeleted() = _$_WorkoutDeleted;
}

class _$WorkoutsStateTearOff {
  const _$WorkoutsStateTearOff();

  _WorkoutState call(
      {@required
          Exercise exercise,
      @required
          List<Workout> workouts,
      @required
          Workout currentWorkout,
      @required
          bool isSaving,
      @required
          Option<FirebaseFailure> loadingFailureOption,
      @required
          Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption}) {
    return _WorkoutState(
      exercise: exercise,
      workouts: workouts,
      currentWorkout: currentWorkout,
      isSaving: isSaving,
      loadingFailureOption: loadingFailureOption,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $WorkoutsState = _$WorkoutsStateTearOff();

mixin _$WorkoutsState {
  Exercise get exercise;
  List<Workout> get workouts;
  Workout get currentWorkout;
  bool get isSaving;
  Option<FirebaseFailure> get loadingFailureOption;
  Option<Either<FirebaseFailure, Unit>> get saveFailureOrSuccessOption;

  $WorkoutsStateCopyWith<WorkoutsState> get copyWith;
}

abstract class $WorkoutsStateCopyWith<$Res> {
  factory $WorkoutsStateCopyWith(
          WorkoutsState value, $Res Function(WorkoutsState) then) =
      _$WorkoutsStateCopyWithImpl<$Res>;
  $Res call(
      {Exercise exercise,
      List<Workout> workouts,
      Workout currentWorkout,
      bool isSaving,
      Option<FirebaseFailure> loadingFailureOption,
      Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption});

  $ExerciseCopyWith<$Res> get exercise;
  $WorkoutCopyWith<$Res> get currentWorkout;
}

class _$WorkoutsStateCopyWithImpl<$Res>
    implements $WorkoutsStateCopyWith<$Res> {
  _$WorkoutsStateCopyWithImpl(this._value, this._then);

  final WorkoutsState _value;
  // ignore: unused_field
  final $Res Function(WorkoutsState) _then;

  @override
  $Res call({
    Object exercise = freezed,
    Object workouts = freezed,
    Object currentWorkout = freezed,
    Object isSaving = freezed,
    Object loadingFailureOption = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      workouts:
          workouts == freezed ? _value.workouts : workouts as List<Workout>,
      currentWorkout: currentWorkout == freezed
          ? _value.currentWorkout
          : currentWorkout as Workout,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      loadingFailureOption: loadingFailureOption == freezed
          ? _value.loadingFailureOption
          : loadingFailureOption as Option<FirebaseFailure>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<FirebaseFailure, Unit>>,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    if (_value.exercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }

  @override
  $WorkoutCopyWith<$Res> get currentWorkout {
    if (_value.currentWorkout == null) {
      return null;
    }
    return $WorkoutCopyWith<$Res>(_value.currentWorkout, (value) {
      return _then(_value.copyWith(currentWorkout: value));
    });
  }
}

abstract class _$WorkoutStateCopyWith<$Res>
    implements $WorkoutsStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(
          _WorkoutState value, $Res Function(_WorkoutState) then) =
      __$WorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exercise exercise,
      List<Workout> workouts,
      Workout currentWorkout,
      bool isSaving,
      Option<FirebaseFailure> loadingFailureOption,
      Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ExerciseCopyWith<$Res> get exercise;
  @override
  $WorkoutCopyWith<$Res> get currentWorkout;
}

class __$WorkoutStateCopyWithImpl<$Res>
    extends _$WorkoutsStateCopyWithImpl<$Res>
    implements _$WorkoutStateCopyWith<$Res> {
  __$WorkoutStateCopyWithImpl(
      _WorkoutState _value, $Res Function(_WorkoutState) _then)
      : super(_value, (v) => _then(v as _WorkoutState));

  @override
  _WorkoutState get _value => super._value as _WorkoutState;

  @override
  $Res call({
    Object exercise = freezed,
    Object workouts = freezed,
    Object currentWorkout = freezed,
    Object isSaving = freezed,
    Object loadingFailureOption = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_WorkoutState(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      workouts:
          workouts == freezed ? _value.workouts : workouts as List<Workout>,
      currentWorkout: currentWorkout == freezed
          ? _value.currentWorkout
          : currentWorkout as Workout,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      loadingFailureOption: loadingFailureOption == freezed
          ? _value.loadingFailureOption
          : loadingFailureOption as Option<FirebaseFailure>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<FirebaseFailure, Unit>>,
    ));
  }
}

class _$_WorkoutState implements _WorkoutState {
  const _$_WorkoutState(
      {@required this.exercise,
      @required this.workouts,
      @required this.currentWorkout,
      @required this.isSaving,
      @required this.loadingFailureOption,
      @required this.saveFailureOrSuccessOption})
      : assert(exercise != null),
        assert(workouts != null),
        assert(currentWorkout != null),
        assert(isSaving != null),
        assert(loadingFailureOption != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Exercise exercise;
  @override
  final List<Workout> workouts;
  @override
  final Workout currentWorkout;
  @override
  final bool isSaving;
  @override
  final Option<FirebaseFailure> loadingFailureOption;
  @override
  final Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'WorkoutsState(exercise: $exercise, workouts: $workouts, currentWorkout: $currentWorkout, isSaving: $isSaving, loadingFailureOption: $loadingFailureOption, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutState &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)) &&
            (identical(other.currentWorkout, currentWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.currentWorkout, currentWorkout)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.loadingFailureOption, loadingFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.loadingFailureOption, loadingFailureOption)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(workouts) ^
      const DeepCollectionEquality().hash(currentWorkout) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(loadingFailureOption) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith =>
      __$WorkoutStateCopyWithImpl<_WorkoutState>(this, _$identity);
}

abstract class _WorkoutState implements WorkoutsState {
  const factory _WorkoutState(
      {@required
          Exercise exercise,
      @required
          List<Workout> workouts,
      @required
          Workout currentWorkout,
      @required
          bool isSaving,
      @required
          Option<FirebaseFailure> loadingFailureOption,
      @required
          Option<Either<FirebaseFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_WorkoutState;

  @override
  Exercise get exercise;
  @override
  List<Workout> get workouts;
  @override
  Workout get currentWorkout;
  @override
  bool get isSaving;
  @override
  Option<FirebaseFailure> get loadingFailureOption;
  @override
  Option<Either<FirebaseFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith;
}
