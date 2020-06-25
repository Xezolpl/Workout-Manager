// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutWatcherEventTearOff {
  const _$WorkoutWatcherEventTearOff();

  _Insert insert(Workout workout) {
    return _Insert(
      workout,
    );
  }

  _Update update(Workout workout) {
    return _Update(
      workout,
    );
  }

  _Delete delete(Workout workout) {
    return _Delete(
      workout,
    );
  }

  _Watch watch(String id) {
    return _Watch(
      id,
    );
  }

  _WatchByExercise watchByExercise(String exerciseId) {
    return _WatchByExercise(
      exerciseId,
    );
  }

  _Received received(OPERATION operation,
      Either<FirebaseFailure, List<Workout>> failureOrWorkouts) {
    return _Received(
      operation,
      failureOrWorkouts,
    );
  }
}

// ignore: unused_element
const $WorkoutWatcherEvent = _$WorkoutWatcherEventTearOff();

mixin _$WorkoutWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result update(_Update value),
    @required Result delete(_Delete value),
    @required Result watch(_Watch value),
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchByExercise(_WatchByExercise value),
    Result received(_Received value),
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

abstract class _$InsertCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) then) =
      __$InsertCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$InsertCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(_Insert _value, $Res Function(_Insert) _then)
      : super(_value, (v) => _then(v as _Insert));

  @override
  _Insert get _value => super._value as _Insert;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Insert(
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

class _$_Insert implements _Insert {
  const _$_Insert(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.insert(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Insert &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$InsertCopyWith<_Insert> get copyWith =>
      __$InsertCopyWithImpl<_Insert>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return insert(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(workout);
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
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
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
    Result watchByExercise(_WatchByExercise value),
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

abstract class _Insert implements WorkoutWatcherEvent {
  const factory _Insert(Workout workout) = _$_Insert;

  Workout get workout;
  _$InsertCopyWith<_Insert> get copyWith;
}

abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$UpdateCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Update(
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

class _$_Update implements _Update {
  const _$_Update(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.update(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return update(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(workout);
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
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
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
    Result watchByExercise(_WatchByExercise value),
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

abstract class _Update implements WorkoutWatcherEvent {
  const factory _Update(Workout workout) = _$_Update;

  Workout get workout;
  _$UpdateCopyWith<_Update> get copyWith;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$DeleteCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Delete(
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

class _$_Delete implements _Delete {
  const _$_Delete(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.delete(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return delete(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(workout);
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
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
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
    Result watchByExercise(_WatchByExercise value),
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

abstract class _Delete implements WorkoutWatcherEvent {
  const factory _Delete(Workout workout) = _$_Delete;

  Workout get workout;
  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$WatchCopyWith<$Res> {
  factory _$WatchCopyWith(_Watch value, $Res Function(_Watch) then) =
      __$WatchCopyWithImpl<$Res>;
  $Res call({String id});
}

class __$WatchCopyWithImpl<$Res> extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$WatchCopyWith<$Res> {
  __$WatchCopyWithImpl(_Watch _value, $Res Function(_Watch) _then)
      : super(_value, (v) => _then(v as _Watch));

  @override
  _Watch get _value => super._value as _Watch;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_Watch(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$_Watch implements _Watch {
  const _$_Watch(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.watch(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Watch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$WatchCopyWith<_Watch> get copyWith =>
      __$WatchCopyWithImpl<_Watch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return watch(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watch != null) {
      return watch(id);
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
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
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
    Result watchByExercise(_WatchByExercise value),
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

abstract class _Watch implements WorkoutWatcherEvent {
  const factory _Watch(String id) = _$_Watch;

  String get id;
  _$WatchCopyWith<_Watch> get copyWith;
}

abstract class _$WatchByExerciseCopyWith<$Res> {
  factory _$WatchByExerciseCopyWith(
          _WatchByExercise value, $Res Function(_WatchByExercise) then) =
      __$WatchByExerciseCopyWithImpl<$Res>;
  $Res call({String exerciseId});
}

class __$WatchByExerciseCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$WatchByExerciseCopyWith<$Res> {
  __$WatchByExerciseCopyWithImpl(
      _WatchByExercise _value, $Res Function(_WatchByExercise) _then)
      : super(_value, (v) => _then(v as _WatchByExercise));

  @override
  _WatchByExercise get _value => super._value as _WatchByExercise;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_WatchByExercise(
      exerciseId == freezed ? _value.exerciseId : exerciseId as String,
    ));
  }
}

class _$_WatchByExercise implements _WatchByExercise {
  const _$_WatchByExercise(this.exerciseId) : assert(exerciseId != null);

  @override
  final String exerciseId;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.watchByExercise(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchByExercise &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  _$WatchByExerciseCopyWith<_WatchByExercise> get copyWith =>
      __$WatchByExerciseCopyWithImpl<_WatchByExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return watchByExercise(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByExercise != null) {
      return watchByExercise(exerciseId);
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
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return watchByExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result update(_Update value),
    Result delete(_Delete value),
    Result watch(_Watch value),
    Result watchByExercise(_WatchByExercise value),
    Result received(_Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByExercise != null) {
      return watchByExercise(this);
    }
    return orElse();
  }
}

abstract class _WatchByExercise implements WorkoutWatcherEvent {
  const factory _WatchByExercise(String exerciseId) = _$_WatchByExercise;

  String get exerciseId;
  _$WatchByExerciseCopyWith<_WatchByExercise> get copyWith;
}

abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call(
      {OPERATION operation,
      Either<FirebaseFailure, List<Workout>> failureOrWorkouts});
}

class __$ReceivedCopyWithImpl<$Res>
    extends _$WorkoutWatcherEventCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object operation = freezed,
    Object failureOrWorkouts = freezed,
  }) {
    return _then(_Received(
      operation == freezed ? _value.operation : operation as OPERATION,
      failureOrWorkouts == freezed
          ? _value.failureOrWorkouts
          : failureOrWorkouts as Either<FirebaseFailure, List<Workout>>,
    ));
  }
}

class _$_Received implements _Received {
  const _$_Received(this.operation, this.failureOrWorkouts)
      : assert(operation != null),
        assert(failureOrWorkouts != null);

  @override
  final OPERATION operation;
  @override
  final Either<FirebaseFailure, List<Workout>> failureOrWorkouts;

  @override
  String toString() {
    return 'WorkoutWatcherEvent.received(operation: $operation, failureOrWorkouts: $failureOrWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Received &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.failureOrWorkouts, failureOrWorkouts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrWorkouts, failureOrWorkouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(failureOrWorkouts);

  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(Workout workout),
    @required Result update(Workout workout),
    @required Result delete(Workout workout),
    @required Result watch(String id),
    @required Result watchByExercise(String exerciseId),
    @required
        Result received(OPERATION operation,
            Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
    assert(received != null);
    return received(operation, failureOrWorkouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(Workout workout),
    Result update(Workout workout),
    Result delete(Workout workout),
    Result watch(String id),
    Result watchByExercise(String exerciseId),
    Result received(OPERATION operation,
        Either<FirebaseFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (received != null) {
      return received(operation, failureOrWorkouts);
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
    @required Result watchByExercise(_WatchByExercise value),
    @required Result received(_Received value),
  }) {
    assert(insert != null);
    assert(update != null);
    assert(delete != null);
    assert(watch != null);
    assert(watchByExercise != null);
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
    Result watchByExercise(_WatchByExercise value),
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

abstract class _Received implements WorkoutWatcherEvent {
  const factory _Received(OPERATION operation,
      Either<FirebaseFailure, List<Workout>> failureOrWorkouts) = _$_Received;

  OPERATION get operation;
  Either<FirebaseFailure, List<Workout>> get failureOrWorkouts;
  _$ReceivedCopyWith<_Received> get copyWith;
}

class _$WorkoutWatcherStateTearOff {
  const _$WorkoutWatcherStateTearOff();

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  Loaded workoutsLoaded(List<Workout> workouts) {
    return Loaded(
      workouts,
    );
  }

  Success success(OPERATION operation, [Workout workout]) {
    return Success(
      operation,
      workout,
    );
  }

  Failure failure(OPERATION operation, FirebaseFailure noteFailure) {
    return Failure(
      operation,
      noteFailure,
    );
  }
}

// ignore: unused_element
const $WorkoutWatcherState = _$WorkoutWatcherStateTearOff();

mixin _$WorkoutWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result workoutsLoaded(List<Workout> workouts),
    @required Result success(OPERATION operation, Workout workout),
    @required Result failure(OPERATION operation, FirebaseFailure noteFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result workoutsLoaded(List<Workout> workouts),
    Result success(OPERATION operation, Workout workout),
    Result failure(OPERATION operation, FirebaseFailure noteFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result workoutsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result workoutsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
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
    @required Result loadInProgress(),
    @required Result workoutsLoaded(List<Workout> workouts),
    @required Result success(OPERATION operation, Workout workout),
    @required Result failure(OPERATION operation, FirebaseFailure noteFailure),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result workoutsLoaded(List<Workout> workouts),
    Result success(OPERATION operation, Workout workout),
    Result failure(OPERATION operation, FirebaseFailure noteFailure),
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
    @required Result workoutsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result workoutsLoaded(Loaded value),
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

abstract class LoadInProgress implements WorkoutWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Workout> workouts});
}

class _$LoadedCopyWithImpl<$Res> extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object workouts = freezed,
  }) {
    return _then(Loaded(
      workouts == freezed ? _value.workouts : workouts as List<Workout>,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded(this.workouts) : assert(workouts != null);

  @override
  final List<Workout> workouts;

  @override
  String toString() {
    return 'WorkoutWatcherState.workoutsLoaded(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workouts);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result workoutsLoaded(List<Workout> workouts),
    @required Result success(OPERATION operation, Workout workout),
    @required Result failure(OPERATION operation, FirebaseFailure noteFailure),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return workoutsLoaded(workouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result workoutsLoaded(List<Workout> workouts),
    Result success(OPERATION operation, Workout workout),
    Result failure(OPERATION operation, FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsLoaded != null) {
      return workoutsLoaded(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result workoutsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return workoutsLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result workoutsLoaded(Loaded value),
    Result success(Success value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsLoaded != null) {
      return workoutsLoaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements WorkoutWatcherState {
  const factory Loaded(List<Workout> workouts) = _$Loaded;

  List<Workout> get workouts;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({OPERATION operation, Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class _$SuccessCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object operation = freezed,
    Object workout = freezed,
  }) {
    return _then(Success(
      operation == freezed ? _value.operation : operation as OPERATION,
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

class _$Success implements Success {
  const _$Success(this.operation, [this.workout]) : assert(operation != null);

  @override
  final OPERATION operation;
  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutWatcherState.success(operation: $operation, workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(workout);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result workoutsLoaded(List<Workout> workouts),
    @required Result success(OPERATION operation, Workout workout),
    @required Result failure(OPERATION operation, FirebaseFailure noteFailure),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return success(operation, workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result workoutsLoaded(List<Workout> workouts),
    Result success(OPERATION operation, Workout workout),
    Result failure(OPERATION operation, FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(operation, workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result workoutsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result workoutsLoaded(Loaded value),
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

abstract class Success implements WorkoutWatcherState {
  const factory Success(OPERATION operation, [Workout workout]) = _$Success;

  OPERATION get operation;
  Workout get workout;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({OPERATION operation, FirebaseFailure noteFailure});

  $FirebaseFailureCopyWith<$Res> get noteFailure;
}

class _$FailureCopyWithImpl<$Res>
    extends _$WorkoutWatcherStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object operation = freezed,
    Object noteFailure = freezed,
  }) {
    return _then(Failure(
      operation == freezed ? _value.operation : operation as OPERATION,
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

class _$Failure implements Failure {
  const _$Failure(this.operation, this.noteFailure)
      : assert(operation != null),
        assert(noteFailure != null);

  @override
  final OPERATION operation;
  @override
  final FirebaseFailure noteFailure;

  @override
  String toString() {
    return 'WorkoutWatcherState.failure(operation: $operation, noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.noteFailure, noteFailure) ||
                const DeepCollectionEquality()
                    .equals(other.noteFailure, noteFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(noteFailure);

  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInProgress(),
    @required Result workoutsLoaded(List<Workout> workouts),
    @required Result success(OPERATION operation, Workout workout),
    @required Result failure(OPERATION operation, FirebaseFailure noteFailure),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return failure(operation, noteFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInProgress(),
    Result workoutsLoaded(List<Workout> workouts),
    Result success(OPERATION operation, Workout workout),
    Result failure(OPERATION operation, FirebaseFailure noteFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(operation, noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInProgress(LoadInProgress value),
    @required Result workoutsLoaded(Loaded value),
    @required Result success(Success value),
    @required Result failure(Failure value),
  }) {
    assert(loadInProgress != null);
    assert(workoutsLoaded != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInProgress(LoadInProgress value),
    Result workoutsLoaded(Loaded value),
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

abstract class Failure implements WorkoutWatcherState {
  const factory Failure(OPERATION operation, FirebaseFailure noteFailure) =
      _$Failure;

  OPERATION get operation;
  FirebaseFailure get noteFailure;
  $FailureCopyWith<Failure> get copyWith;
}
