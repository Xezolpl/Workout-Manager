// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercises_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExercisesEventTearOff {
  const _$ExercisesEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _WatchByPartyStarted watchByPartyStarted(String party) {
    return _WatchByPartyStarted(
      party,
    );
  }

  _ExercisesReceived exercisesReceived(
      Either<ExerciseFailure, List<Exercise>> failuresOrExercises) {
    return _ExercisesReceived(
      failuresOrExercises,
    );
  }
}

// ignore: unused_element
const $ExercisesEvent = _$ExercisesEventTearOff();

mixin _$ExercisesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchByPartyStarted(String party),
    @required
        Result exercisesReceived(
            Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchByPartyStarted(String party),
    Result exercisesReceived(
        Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchByPartyStarted(_WatchByPartyStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchByPartyStarted(_WatchByPartyStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  });
}

abstract class $ExercisesEventCopyWith<$Res> {
  factory $ExercisesEventCopyWith(
          ExercisesEvent value, $Res Function(ExercisesEvent) then) =
      _$ExercisesEventCopyWithImpl<$Res>;
}

class _$ExercisesEventCopyWithImpl<$Res>
    implements $ExercisesEventCopyWith<$Res> {
  _$ExercisesEventCopyWithImpl(this._value, this._then);

  final ExercisesEvent _value;
  // ignore: unused_field
  final $Res Function(ExercisesEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ExercisesEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ExercisesEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchByPartyStarted(String party),
    @required
        Result exercisesReceived(
            Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
  }) {
    assert(watchAllStarted != null);
    assert(watchByPartyStarted != null);
    assert(exercisesReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchByPartyStarted(String party),
    Result exercisesReceived(
        Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchByPartyStarted(_WatchByPartyStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchByPartyStarted != null);
    assert(exercisesReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchByPartyStarted(_WatchByPartyStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ExercisesEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$WatchByPartyStartedCopyWith<$Res> {
  factory _$WatchByPartyStartedCopyWith(_WatchByPartyStarted value,
          $Res Function(_WatchByPartyStarted) then) =
      __$WatchByPartyStartedCopyWithImpl<$Res>;
  $Res call({String party});
}

class __$WatchByPartyStartedCopyWithImpl<$Res>
    extends _$ExercisesEventCopyWithImpl<$Res>
    implements _$WatchByPartyStartedCopyWith<$Res> {
  __$WatchByPartyStartedCopyWithImpl(
      _WatchByPartyStarted _value, $Res Function(_WatchByPartyStarted) _then)
      : super(_value, (v) => _then(v as _WatchByPartyStarted));

  @override
  _WatchByPartyStarted get _value => super._value as _WatchByPartyStarted;

  @override
  $Res call({
    Object party = freezed,
  }) {
    return _then(_WatchByPartyStarted(
      party == freezed ? _value.party : party as String,
    ));
  }
}

class _$_WatchByPartyStarted implements _WatchByPartyStarted {
  const _$_WatchByPartyStarted(this.party) : assert(party != null);

  @override
  final String party;

  @override
  String toString() {
    return 'ExercisesEvent.watchByPartyStarted(party: $party)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchByPartyStarted &&
            (identical(other.party, party) ||
                const DeepCollectionEquality().equals(other.party, party)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(party);

  @override
  _$WatchByPartyStartedCopyWith<_WatchByPartyStarted> get copyWith =>
      __$WatchByPartyStartedCopyWithImpl<_WatchByPartyStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchByPartyStarted(String party),
    @required
        Result exercisesReceived(
            Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
  }) {
    assert(watchAllStarted != null);
    assert(watchByPartyStarted != null);
    assert(exercisesReceived != null);
    return watchByPartyStarted(party);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchByPartyStarted(String party),
    Result exercisesReceived(
        Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByPartyStarted != null) {
      return watchByPartyStarted(party);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchByPartyStarted(_WatchByPartyStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchByPartyStarted != null);
    assert(exercisesReceived != null);
    return watchByPartyStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchByPartyStarted(_WatchByPartyStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchByPartyStarted != null) {
      return watchByPartyStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchByPartyStarted implements ExercisesEvent {
  const factory _WatchByPartyStarted(String party) = _$_WatchByPartyStarted;

  String get party;
  _$WatchByPartyStartedCopyWith<_WatchByPartyStarted> get copyWith;
}

abstract class _$ExercisesReceivedCopyWith<$Res> {
  factory _$ExercisesReceivedCopyWith(
          _ExercisesReceived value, $Res Function(_ExercisesReceived) then) =
      __$ExercisesReceivedCopyWithImpl<$Res>;
  $Res call({Either<ExerciseFailure, List<Exercise>> failuresOrExercises});
}

class __$ExercisesReceivedCopyWithImpl<$Res>
    extends _$ExercisesEventCopyWithImpl<$Res>
    implements _$ExercisesReceivedCopyWith<$Res> {
  __$ExercisesReceivedCopyWithImpl(
      _ExercisesReceived _value, $Res Function(_ExercisesReceived) _then)
      : super(_value, (v) => _then(v as _ExercisesReceived));

  @override
  _ExercisesReceived get _value => super._value as _ExercisesReceived;

  @override
  $Res call({
    Object failuresOrExercises = freezed,
  }) {
    return _then(_ExercisesReceived(
      failuresOrExercises == freezed
          ? _value.failuresOrExercises
          : failuresOrExercises as Either<ExerciseFailure, List<Exercise>>,
    ));
  }
}

class _$_ExercisesReceived implements _ExercisesReceived {
  const _$_ExercisesReceived(this.failuresOrExercises)
      : assert(failuresOrExercises != null);

  @override
  final Either<ExerciseFailure, List<Exercise>> failuresOrExercises;

  @override
  String toString() {
    return 'ExercisesEvent.exercisesReceived(failuresOrExercises: $failuresOrExercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExercisesReceived &&
            (identical(other.failuresOrExercises, failuresOrExercises) ||
                const DeepCollectionEquality()
                    .equals(other.failuresOrExercises, failuresOrExercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failuresOrExercises);

  @override
  _$ExercisesReceivedCopyWith<_ExercisesReceived> get copyWith =>
      __$ExercisesReceivedCopyWithImpl<_ExercisesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchByPartyStarted(String party),
    @required
        Result exercisesReceived(
            Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
  }) {
    assert(watchAllStarted != null);
    assert(watchByPartyStarted != null);
    assert(exercisesReceived != null);
    return exercisesReceived(failuresOrExercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchByPartyStarted(String party),
    Result exercisesReceived(
        Either<ExerciseFailure, List<Exercise>> failuresOrExercises),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesReceived != null) {
      return exercisesReceived(failuresOrExercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchByPartyStarted(_WatchByPartyStarted value),
    @required Result exercisesReceived(_ExercisesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchByPartyStarted != null);
    assert(exercisesReceived != null);
    return exercisesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchByPartyStarted(_WatchByPartyStarted value),
    Result exercisesReceived(_ExercisesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesReceived != null) {
      return exercisesReceived(this);
    }
    return orElse();
  }
}

abstract class _ExercisesReceived implements ExercisesEvent {
  const factory _ExercisesReceived(
          Either<ExerciseFailure, List<Exercise>> failuresOrExercises) =
      _$_ExercisesReceived;

  Either<ExerciseFailure, List<Exercise>> get failuresOrExercises;
  _$ExercisesReceivedCopyWith<_ExercisesReceived> get copyWith;
}

class _$ExercisesStateTearOff {
  const _$ExercisesStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(List<Exercise> exercises) {
    return LoadSuccess(
      exercises,
    );
  }

  LoadFailure loadFailure(ExerciseFailure failure) {
    return LoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ExercisesState = _$ExercisesStateTearOff();

mixin _$ExercisesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ExercisesStateCopyWith<$Res> {
  factory $ExercisesStateCopyWith(
          ExercisesState value, $Res Function(ExercisesState) then) =
      _$ExercisesStateCopyWithImpl<$Res>;
}

class _$ExercisesStateCopyWithImpl<$Res>
    implements $ExercisesStateCopyWith<$Res> {
  _$ExercisesStateCopyWithImpl(this._value, this._then);

  final ExercisesState _value;
  // ignore: unused_field
  final $Res Function(ExercisesState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ExercisesStateCopyWithImpl<$Res>
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
    return 'ExercisesState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure failure),
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
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class Initial implements ExercisesState {
  const factory Initial() = _$Initial;
}

abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

class _$LoadInProgressCopyWithImpl<$Res>
    extends _$ExercisesStateCopyWithImpl<$Res>
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
    return 'ExercisesState.loadInProgress()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure failure),
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
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class LoadInProgress implements ExercisesState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$ExercisesStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(LoadSuccess(
      exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.exercises) : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'ExercisesState.loadSuccess(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(exercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class LoadSuccess implements ExercisesState {
  const factory LoadSuccess(List<Exercise> exercises) = _$LoadSuccess;

  List<Exercise> get exercises;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ExerciseFailure failure});

  $ExerciseFailureCopyWith<$Res> get failure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$ExercisesStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoadFailure(
      failure == freezed ? _value.failure : failure as ExerciseFailure,
    ));
  }

  @override
  $ExerciseFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ExerciseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure) : assert(failure != null);

  @override
  final ExerciseFailure failure;

  @override
  String toString() {
    return 'ExercisesState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Exercise> exercises),
    @required Result loadFailure(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Exercise> exercises),
    Result loadFailure(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class LoadFailure implements ExercisesState {
  const factory LoadFailure(ExerciseFailure failure) = _$LoadFailure;

  ExerciseFailure get failure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
