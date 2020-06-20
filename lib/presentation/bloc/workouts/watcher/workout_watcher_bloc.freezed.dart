// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutWatcherEventTearOff {
  const _$WorkoutWatcherEventTearOff();

  _WatchByExerciseStarted watchByExerciseStarted(String exerciseId) {
    return _WatchByExerciseStarted(
      exerciseId,
    );
  }

  _WorkoutChanged workoutChanged(Workout workout) {
    return _WorkoutChanged(
      workout,
    );
  }

  _WorkoutsReceived workoutsReceived(
      Either<FirebaseFailure, List<Workout>> failureOrWorkouts) {
    return _WorkoutsReceived(
      failureOrWorkouts,
    );
  }
}

// ignore: unused_element
const $WorkoutWatcherEvent = _$WorkoutWatcherEventTearOff();

mixin _$WorkoutWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchByExerciseStarted(String exerciseId),
    @required Result workoutChanged(Workout workout),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchByExerciseStarted(String exerciseId),
    Result workoutChanged(Workout workout),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutChanged(_WorkoutChanged value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutChanged(_WorkoutChanged value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  });
}

abstract class $WorkoutWatcherEventCopyWith<$Res> {
  factory $WorkoutWatcherEventCopyWith(
          WorkoutWatcherEvent value, $Res Function(WorkoutWatcherEvent) then) =
      _$WorkoutWatcherEventCopyWithImpl<$Res>;
}

class _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements $WorkoutWatcherEventCopyWith<$Res> {
  _$WorkoutWatcherEventCopyWithImpl(this._value, this._then);

  final WorkoutWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutWatcherEvent) _then;
}

abstract class _$WatchByExerciseStartedCopyWith<$Res> {
  factory _$WatchByExerciseStartedCopyWith(_WatchByExerciseStarted value,
          $Res Function(_WatchByExerciseStarted) then) =
      __$WatchByExerciseStartedCopyWithImpl<$Res>;
  $Res call({String exerciseId});
}

class __$WatchByExerciseStartedCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
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
    return 'WorkoutWatcherEvent.watchByExerciseStarted(exerciseId: $exerciseId)';
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
    @required Result watchByExerciseStarted(String exerciseId),
    @required Result workoutChanged(Workout workout),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(watchByExerciseStarted != null);
    assert(workoutChanged != null);
    assert(workoutsReceived != null);
    return watchByExerciseStarted(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchByExerciseStarted(String exerciseId),
    Result workoutChanged(Workout workout),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
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
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutChanged(_WorkoutChanged value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  }) {
    assert(watchByExerciseStarted != null);
    assert(workoutChanged != null);
    assert(workoutsReceived != null);
    return watchByExerciseStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutChanged(_WorkoutChanged value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByExerciseStarted != null) {
      return watchByExerciseStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchByExerciseStarted implements WorkoutWatcherEvent {
  const factory _WatchByExerciseStarted(String exerciseId) =
      _$_WatchByExerciseStarted;

  String get exerciseId;
  _$WatchByExerciseStartedCopyWith<_WatchByExerciseStarted> get copyWith;
}

abstract class _$WorkoutChangedCopyWith<$Res> {
  factory _$WorkoutChangedCopyWith(
          _WorkoutChanged value, $Res Function(_WorkoutChanged) then) =
      __$WorkoutChangedCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$WorkoutChangedCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$WorkoutChangedCopyWith<$Res> {
  __$WorkoutChangedCopyWithImpl(
      _WorkoutChanged _value, $Res Function(_WorkoutChanged) _then)
      : super(_value, (v) => _then(v as _WorkoutChanged));

  @override
  _WorkoutChanged get _value => super._value as _WorkoutChanged;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_WorkoutChanged(
      workout == freezed ? _value.workout : workout as Workout,
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

class _$_WorkoutChanged implements _WorkoutChanged {
  const _$_WorkoutChanged(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.workoutChanged(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutChanged &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$WorkoutChangedCopyWith<_WorkoutChanged> get copyWith =>
      __$WorkoutChangedCopyWithImpl<_WorkoutChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchByExerciseStarted(String exerciseId),
    @required Result workoutChanged(Workout workout),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(watchByExerciseStarted != null);
    assert(workoutChanged != null);
    assert(workoutsReceived != null);
    return workoutChanged(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchByExerciseStarted(String exerciseId),
    Result workoutChanged(Workout workout),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutChanged(_WorkoutChanged value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  }) {
    assert(watchByExerciseStarted != null);
    assert(workoutChanged != null);
    assert(workoutsReceived != null);
    return workoutChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutChanged(_WorkoutChanged value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutChanged != null) {
      return workoutChanged(this);
    }
    return orElse();
  }
}

abstract class _WorkoutChanged implements WorkoutWatcherEvent {
  const factory _WorkoutChanged(Workout workout) = _$_WorkoutChanged;

  Workout get workout;
  _$WorkoutChangedCopyWith<_WorkoutChanged> get copyWith;
}

abstract class _$WorkoutsReceivedCopyWith<$Res> {
  factory _$WorkoutsReceivedCopyWith(
          _WorkoutsReceived value, $Res Function(_WorkoutsReceived) then) =
      __$WorkoutsReceivedCopyWithImpl<$Res>;
  $Res call({Either<FirebaseFailure, List<Workout>> failureOrWorkouts});
}

class __$WorkoutsReceivedCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$WorkoutsReceivedCopyWith<$Res> {
  __$WorkoutsReceivedCopyWithImpl(
      _WorkoutsReceived _value, $Res Function(_WorkoutsReceived) _then)
      : super(_value, (v) => _then(v as _WorkoutsReceived));

  @override
  _WorkoutsReceived get _value => super._value as _WorkoutsReceived;

  @override
  $Res call({
    Object failureOrWorkouts = freezed,
  }) {
    return _then(_WorkoutsReceived(
      failureOrWorkouts == freezed
          ? _value.failureOrWorkouts
          : failureOrWorkouts as Either<FirebaseFailure, List<Workout>>,
    ));
  }
}

class _$_WorkoutsReceived implements _WorkoutsReceived {
  const _$_WorkoutsReceived(this.failureOrWorkouts)
      : assert(failureOrWorkouts != null);

  @override
  final Either<FirebaseFailure, List<Workout>> failureOrWorkouts;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.workoutsReceived(failureOrWorkouts: $failureOrWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutsReceived &&
            (identical(other.failureOrWorkouts, failureOrWorkouts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrWorkouts, failureOrWorkouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrWorkouts);

  @override
  _$WorkoutsReceivedCopyWith<_WorkoutsReceived> get copyWith =>
      __$WorkoutsReceivedCopyWithImpl<_WorkoutsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchByExerciseStarted(String exerciseId),
    @required Result workoutChanged(Workout workout),
    @required
        Result workoutsReceived(
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(watchByExerciseStarted != null);
    assert(workoutChanged != null);
    assert(workoutsReceived != null);
    return workoutsReceived(failureOrWorkouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchByExerciseStarted(String exerciseId),
    Result workoutChanged(Workout workout),
    Result workoutsReceived(
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsReceived != null) {
      return workoutsReceived(failureOrWorkouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchByExerciseStarted(_WatchByExerciseStarted value),
    @required Result workoutChanged(_WorkoutChanged value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  }) {
    assert(watchByExerciseStarted != null);
    assert(workoutChanged != null);
    assert(workoutsReceived != null);
    return workoutsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchByExerciseStarted(_WatchByExerciseStarted value),
    Result workoutChanged(_WorkoutChanged value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsReceived != null) {
      return workoutsReceived(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsReceived implements WorkoutWatcherEvent {
  const factory _WorkoutsReceived(
          Either<FirebaseFailure, List<Workout>> failureOrWorkouts) =
      _$_WorkoutsReceived;

  Either<FirebaseFailure, List<Workout>> get failureOrWorkouts;
  _$WorkoutsReceivedCopyWith<_WorkoutsReceived> get copyWith;
}

class _$WorkoutWatcherStateTearOff {
  const _$WorkoutWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadedCurrWorkout loadedCurrWorkout(Workout currWorkout) {
    return LoadedCurrWorkout(
      currWorkout,
    );
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(List<Workout> workouts) {
    return LoadSuccess(
      workouts,
    );
  }

  LoadFailure loadFailure(FirebaseFailure noteFailure) {
    return LoadFailure(
      noteFailure,
    );
  }
}

// ignore: unused_element
const $WorkoutWatcherState = _$WorkoutWatcherStateTearOff();

mixin _$WorkoutWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedCurrWorkout(Workout currWorkout),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Workout> workouts),
    @required Result loadFailure(FirebaseFailure noteFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedCurrWorkout(Workout currWorkout),
    Result loadInProgress(),
    Result loadSuccess(List<Workout> workouts),
    Result loadFailure(FirebaseFailure noteFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedCurrWorkout(LoadedCurrWorkout value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedCurrWorkout(LoadedCurrWorkout value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $WorkoutWatcherStateCopyWith<$Res> {
  factory $WorkoutWatcherStateCopyWith(
          WorkoutWatcherState value, $Res Function(WorkoutWatcherState) then) =
      _$WorkoutWatcherStateCopyWithImpl<$Res>;
}

class _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $WorkoutWatcherStateCopyWith<$Res> {
  _$WorkoutWatcherStateCopyWithImpl(this._value, this._then);

  final WorkoutWatcherState _value;
  // ignore: unused_field
  final $Res Function(WorkoutWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'WorkoutWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedCurrWorkout(Workout currWorkout),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Workout> workouts),
    @required Result loadFailure(FirebaseFailure noteFailure),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedCurrWorkout(Workout currWorkout),
    Result loadInProgress(),
    Result loadSuccess(List<Workout> workouts),
    Result loadFailure(FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedCurrWorkout(LoadedCurrWorkout value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedCurrWorkout(LoadedCurrWorkout value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WorkoutWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $LoadedCurrWorkoutCopyWith<$Res> {
  factory $LoadedCurrWorkoutCopyWith(
          LoadedCurrWorkout value, $Res Function(LoadedCurrWorkout) then) =
      _$LoadedCurrWorkoutCopyWithImpl<$Res>;
  $Res call({Workout currWorkout});

  $WorkoutCopyWith<$Res> get currWorkout;
}

class _$LoadedCurrWorkoutCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $LoadedCurrWorkoutCopyWith<$Res> {
  _$LoadedCurrWorkoutCopyWithImpl(
      LoadedCurrWorkout _value, $Res Function(LoadedCurrWorkout) _then)
      : super(_value, (v) => _then(v as LoadedCurrWorkout));

  @override
  LoadedCurrWorkout get _value => super._value as LoadedCurrWorkout;

  @override
  $Res call({
    Object currWorkout = freezed,
  }) {
    return _then(LoadedCurrWorkout(
      currWorkout == freezed ? _value.currWorkout : currWorkout as Workout,
    ));
  }

  @override
  $WorkoutCopyWith<$Res> get currWorkout {
    if (_value.currWorkout == null) {
      return null;
    }
    return $WorkoutCopyWith<$Res>(_value.currWorkout, (value) {
      return _then(_value.copyWith(currWorkout: value));
    });
  }
}

class _$LoadedCurrWorkout implements LoadedCurrWorkout {
  const _$LoadedCurrWorkout(this.currWorkout) : assert(currWorkout != null);

  @override
  final Workout currWorkout;

  @override
  String toString() {
    return 'WorkoutWatcherState.loadedCurrWorkout(currWorkout: $currWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedCurrWorkout &&
            (identical(other.currWorkout, currWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.currWorkout, currWorkout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currWorkout);

  @override
  $LoadedCurrWorkoutCopyWith<LoadedCurrWorkout> get copyWith =>
      _$LoadedCurrWorkoutCopyWithImpl<LoadedCurrWorkout>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedCurrWorkout(Workout currWorkout),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Workout> workouts),
    @required Result loadFailure(FirebaseFailure noteFailure),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadedCurrWorkout(currWorkout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedCurrWorkout(Workout currWorkout),
    Result loadInProgress(),
    Result loadSuccess(List<Workout> workouts),
    Result loadFailure(FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedCurrWorkout != null) {
      return loadedCurrWorkout(currWorkout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedCurrWorkout(LoadedCurrWorkout value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadedCurrWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedCurrWorkout(LoadedCurrWorkout value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedCurrWorkout != null) {
      return loadedCurrWorkout(this);
    }
    return orElse();
  }
}

abstract class LoadedCurrWorkout implements WorkoutWatcherState {
  const factory LoadedCurrWorkout(Workout currWorkout) = _$LoadedCurrWorkout;

  Workout get currWorkout;
  $LoadedCurrWorkoutCopyWith<LoadedCurrWorkout> get copyWith;
}

abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

class _$LoadInProgressCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
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
    return 'WorkoutWatcherState.loadInProgress()';
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
    @required Result initial(),
    @required Result loadedCurrWorkout(Workout currWorkout),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Workout> workouts),
    @required Result loadFailure(FirebaseFailure noteFailure),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedCurrWorkout(Workout currWorkout),
    Result loadInProgress(),
    Result loadSuccess(List<Workout> workouts),
    Result loadFailure(FirebaseFailure noteFailure),
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
    @required Result initial(Initial value),
    @required Result loadedCurrWorkout(LoadedCurrWorkout value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedCurrWorkout(LoadedCurrWorkout value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements WorkoutWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Workout> workouts});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object workouts = freezed,
  }) {
    return _then(LoadSuccess(
      workouts == freezed ? _value.workouts : workouts as List<Workout>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.workouts) : assert(workouts != null);

  @override
  final List<Workout> workouts;

  @override
  String toString() {
    return 'WorkoutWatcherState.loadSuccess(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workouts);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedCurrWorkout(Workout currWorkout),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Workout> workouts),
    @required Result loadFailure(FirebaseFailure noteFailure),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(workouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedCurrWorkout(Workout currWorkout),
    Result loadInProgress(),
    Result loadSuccess(List<Workout> workouts),
    Result loadFailure(FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedCurrWorkout(LoadedCurrWorkout value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedCurrWorkout(LoadedCurrWorkout value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements WorkoutWatcherState {
  const factory LoadSuccess(List<Workout> workouts) = _$LoadSuccess;

  List<Workout> get workouts;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({FirebaseFailure noteFailure});

  $FirebaseFailureCopyWith<$Res> get noteFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object noteFailure = freezed,
  }) {
    return _then(LoadFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure as FirebaseFailure,
    ));
  }

  @override
  $FirebaseFailureCopyWith<$Res> get noteFailure {
    if (_value.noteFailure == null) {
      return null;
    }
    return $FirebaseFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.noteFailure) : assert(noteFailure != null);

  @override
  final FirebaseFailure noteFailure;

  @override
  String toString() {
    return 'WorkoutWatcherState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.noteFailure, noteFailure) ||
                const DeepCollectionEquality()
                    .equals(other.noteFailure, noteFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noteFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedCurrWorkout(Workout currWorkout),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Workout> workouts),
    @required Result loadFailure(FirebaseFailure noteFailure),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedCurrWorkout(Workout currWorkout),
    Result loadInProgress(),
    Result loadSuccess(List<Workout> workouts),
    Result loadFailure(FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedCurrWorkout(LoadedCurrWorkout value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadedCurrWorkout != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedCurrWorkout(LoadedCurrWorkout value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements WorkoutWatcherState {
  const factory LoadFailure(FirebaseFailure noteFailure) = _$LoadFailure;

  FirebaseFailure get noteFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
