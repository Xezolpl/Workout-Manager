// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutActorEventTearOff {
  const _$WorkoutActorEventTearOff();

  _Added added(Workout workout) {
    return _Added(
      workout,
    );
  }

  _Changed changed(Workout currentWorkout) {
    return _Changed(
      currentWorkout,
    );
  }

  _Deleted deleted(Workout workout) {
    return _Deleted(
      workout,
    );
  }

  _Saved saved(Workout workout) {
    return _Saved(
      workout,
    );
  }
}

// ignore: unused_element
const $WorkoutActorEvent = _$WorkoutActorEventTearOff();

mixin _$WorkoutActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Workout workout),
    @required Result changed(Workout currentWorkout),
    @required Result deleted(Workout workout),
    @required Result saved(Workout workout),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Workout workout),
    Result changed(Workout currentWorkout),
    Result deleted(Workout workout),
    Result saved(Workout workout),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_Added value),
    @required Result changed(_Changed value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_Added value),
    Result changed(_Changed value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $WorkoutActorEventCopyWith<$Res> {
  factory $WorkoutActorEventCopyWith(
          WorkoutActorEvent value, $Res Function(WorkoutActorEvent) then) =
      _$WorkoutActorEventCopyWithImpl<$Res>;
}

class _$WorkoutActorEventCopyWithImpl<$Res>
    implements $WorkoutActorEventCopyWith<$Res> {
  _$WorkoutActorEventCopyWithImpl(this._value, this._then);

  final WorkoutActorEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutActorEvent) _then;
}

abstract class _$AddedCopyWith<$Res> {
  factory _$AddedCopyWith(_Added value, $Res Function(_Added) then) =
      __$AddedCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$AddedCopyWithImpl<$Res> extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$AddedCopyWith<$Res> {
  __$AddedCopyWithImpl(_Added _value, $Res Function(_Added) _then)
      : super(_value, (v) => _then(v as _Added));

  @override
  _Added get _value => super._value as _Added;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Added(
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

class _$_Added implements _Added {
  const _$_Added(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutActorEvent.added(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Added &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$AddedCopyWith<_Added> get copyWith =>
      __$AddedCopyWithImpl<_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Workout workout),
    @required Result changed(Workout currentWorkout),
    @required Result deleted(Workout workout),
    @required Result saved(Workout workout),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return added(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Workout workout),
    Result changed(Workout currentWorkout),
    Result deleted(Workout workout),
    Result saved(Workout workout),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_Added value),
    @required Result changed(_Changed value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_Added value),
    Result changed(_Changed value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements WorkoutActorEvent {
  const factory _Added(Workout workout) = _$_Added;

  Workout get workout;
  _$AddedCopyWith<_Added> get copyWith;
}

abstract class _$ChangedCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) then) =
      __$ChangedCopyWithImpl<$Res>;
  $Res call({Workout currentWorkout});

  $WorkoutCopyWith<$Res> get currentWorkout;
}

class __$ChangedCopyWithImpl<$Res> extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(_Changed _value, $Res Function(_Changed) _then)
      : super(_value, (v) => _then(v as _Changed));

  @override
  _Changed get _value => super._value as _Changed;

  @override
  $Res call({
    Object currentWorkout = freezed,
  }) {
    return _then(_Changed(
      currentWorkout == freezed
          ? _value.currentWorkout
          : currentWorkout as Workout,
    ));
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

class _$_Changed implements _Changed {
  const _$_Changed(this.currentWorkout) : assert(currentWorkout != null);

  @override
  final Workout currentWorkout;

  @override
  String toString() {
    return 'WorkoutActorEvent.changed(currentWorkout: $currentWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Changed &&
            (identical(other.currentWorkout, currentWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.currentWorkout, currentWorkout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentWorkout);

  @override
  _$ChangedCopyWith<_Changed> get copyWith =>
      __$ChangedCopyWithImpl<_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Workout workout),
    @required Result changed(Workout currentWorkout),
    @required Result deleted(Workout workout),
    @required Result saved(Workout workout),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return changed(currentWorkout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Workout workout),
    Result changed(Workout currentWorkout),
    Result deleted(Workout workout),
    Result saved(Workout workout),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(currentWorkout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_Added value),
    @required Result changed(_Changed value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return changed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_Added value),
    Result changed(_Changed value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements WorkoutActorEvent {
  const factory _Changed(Workout currentWorkout) = _$_Changed;

  Workout get currentWorkout;
  _$ChangedCopyWith<_Changed> get copyWith;
}

abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$DeletedCopyWithImpl<$Res> extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Deleted(
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

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutActorEvent.deleted(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Workout workout),
    @required Result changed(Workout currentWorkout),
    @required Result deleted(Workout workout),
    @required Result saved(Workout workout),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return deleted(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Workout workout),
    Result changed(Workout currentWorkout),
    Result deleted(Workout workout),
    Result saved(Workout workout),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_Added value),
    @required Result changed(_Changed value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_Added value),
    Result changed(_Changed value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements WorkoutActorEvent {
  const factory _Deleted(Workout workout) = _$_Deleted;

  Workout get workout;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$SavedCopyWithImpl<$Res> extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Saved(
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

class _$_Saved implements _Saved {
  const _$_Saved(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutActorEvent.saved(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Workout workout),
    @required Result changed(Workout currentWorkout),
    @required Result deleted(Workout workout),
    @required Result saved(Workout workout),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return saved(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Workout workout),
    Result changed(Workout currentWorkout),
    Result deleted(Workout workout),
    Result saved(Workout workout),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_Added value),
    @required Result changed(_Changed value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
  }) {
    assert(added != null);
    assert(changed != null);
    assert(deleted != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_Added value),
    Result changed(_Changed value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements WorkoutActorEvent {
  const factory _Saved(Workout workout) = _$_Saved;

  Workout get workout;
  _$SavedCopyWith<_Saved> get copyWith;
}

class _$WorkoutActorStateTearOff {
  const _$WorkoutActorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Changed loadedWorkout(Workout currentWorkout) {
    return Changed(
      currentWorkout,
    );
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  AddSuccess addSuccess() {
    return const AddSuccess();
  }

  AddFailure addFailure(FirebaseFailure failure) {
    return AddFailure(
      failure,
    );
  }

  UpdateAddSuccess updateSuccess() {
    return const UpdateAddSuccess();
  }

  UpdateFailure updateFailure(FirebaseFailure failure) {
    return UpdateFailure(
      failure,
    );
  }

  DeleteSuccess deleteSuccess() {
    return const DeleteSuccess();
  }

  DeleteFailure deleteFailure(FirebaseFailure failure) {
    return DeleteFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $WorkoutActorState = _$WorkoutActorStateTearOff();

mixin _$WorkoutActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  });
}

abstract class $WorkoutActorStateCopyWith<$Res> {
  factory $WorkoutActorStateCopyWith(
          WorkoutActorState value, $Res Function(WorkoutActorState) then) =
      _$WorkoutActorStateCopyWithImpl<$Res>;
}

class _$WorkoutActorStateCopyWithImpl<$Res>
    implements $WorkoutActorStateCopyWith<$Res> {
  _$WorkoutActorStateCopyWithImpl(this._value, this._then);

  final WorkoutActorState _value;
  // ignore: unused_field
  final $Res Function(WorkoutActorState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$WorkoutActorStateCopyWithImpl<$Res>
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
    return 'WorkoutActorState.initial()';
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
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
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
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WorkoutActorState {
  const factory Initial() = _$Initial;
}

abstract class $ChangedCopyWith<$Res> {
  factory $ChangedCopyWith(Changed value, $Res Function(Changed) then) =
      _$ChangedCopyWithImpl<$Res>;
  $Res call({Workout currentWorkout});

  $WorkoutCopyWith<$Res> get currentWorkout;
}

class _$ChangedCopyWithImpl<$Res> extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $ChangedCopyWith<$Res> {
  _$ChangedCopyWithImpl(Changed _value, $Res Function(Changed) _then)
      : super(_value, (v) => _then(v as Changed));

  @override
  Changed get _value => super._value as Changed;

  @override
  $Res call({
    Object currentWorkout = freezed,
  }) {
    return _then(Changed(
      currentWorkout == freezed
          ? _value.currentWorkout
          : currentWorkout as Workout,
    ));
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

class _$Changed implements Changed {
  const _$Changed(this.currentWorkout) : assert(currentWorkout != null);

  @override
  final Workout currentWorkout;

  @override
  String toString() {
    return 'WorkoutActorState.loadedWorkout(currentWorkout: $currentWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Changed &&
            (identical(other.currentWorkout, currentWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.currentWorkout, currentWorkout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentWorkout);

  @override
  $ChangedCopyWith<Changed> get copyWith =>
      _$ChangedCopyWithImpl<Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return loadedWorkout(currentWorkout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedWorkout != null) {
      return loadedWorkout(currentWorkout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return loadedWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedWorkout != null) {
      return loadedWorkout(this);
    }
    return orElse();
  }
}

abstract class Changed implements WorkoutActorState {
  const factory Changed(Workout currentWorkout) = _$Changed;

  Workout get currentWorkout;
  $ChangedCopyWith<Changed> get copyWith;
}

abstract class $ActionInProgressCopyWith<$Res> {
  factory $ActionInProgressCopyWith(
          ActionInProgress value, $Res Function(ActionInProgress) then) =
      _$ActionInProgressCopyWithImpl<$Res>;
}

class _$ActionInProgressCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $ActionInProgressCopyWith<$Res> {
  _$ActionInProgressCopyWithImpl(
      ActionInProgress _value, $Res Function(ActionInProgress) _then)
      : super(_value, (v) => _then(v as ActionInProgress));

  @override
  ActionInProgress get _value => super._value as ActionInProgress;
}

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'WorkoutActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements WorkoutActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

abstract class $AddSuccessCopyWith<$Res> {
  factory $AddSuccessCopyWith(
          AddSuccess value, $Res Function(AddSuccess) then) =
      _$AddSuccessCopyWithImpl<$Res>;
}

class _$AddSuccessCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $AddSuccessCopyWith<$Res> {
  _$AddSuccessCopyWithImpl(AddSuccess _value, $Res Function(AddSuccess) _then)
      : super(_value, (v) => _then(v as AddSuccess));

  @override
  AddSuccess get _value => super._value as AddSuccess;
}

class _$AddSuccess implements AddSuccess {
  const _$AddSuccess();

  @override
  String toString() {
    return 'WorkoutActorState.addSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class AddSuccess implements WorkoutActorState {
  const factory AddSuccess() = _$AddSuccess;
}

abstract class $AddFailureCopyWith<$Res> {
  factory $AddFailureCopyWith(
          AddFailure value, $Res Function(AddFailure) then) =
      _$AddFailureCopyWithImpl<$Res>;
  $Res call({FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

class _$AddFailureCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $AddFailureCopyWith<$Res> {
  _$AddFailureCopyWithImpl(AddFailure _value, $Res Function(AddFailure) _then)
      : super(_value, (v) => _then(v as AddFailure));

  @override
  AddFailure get _value => super._value as AddFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(AddFailure(
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

class _$AddFailure implements AddFailure {
  const _$AddFailure(this.failure) : assert(failure != null);

  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'WorkoutActorState.addFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $AddFailureCopyWith<AddFailure> get copyWith =>
      _$AddFailureCopyWithImpl<AddFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return addFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddFailure implements WorkoutActorState {
  const factory AddFailure(FirebaseFailure failure) = _$AddFailure;

  FirebaseFailure get failure;
  $AddFailureCopyWith<AddFailure> get copyWith;
}

abstract class $UpdateAddSuccessCopyWith<$Res> {
  factory $UpdateAddSuccessCopyWith(
          UpdateAddSuccess value, $Res Function(UpdateAddSuccess) then) =
      _$UpdateAddSuccessCopyWithImpl<$Res>;
}

class _$UpdateAddSuccessCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $UpdateAddSuccessCopyWith<$Res> {
  _$UpdateAddSuccessCopyWithImpl(
      UpdateAddSuccess _value, $Res Function(UpdateAddSuccess) _then)
      : super(_value, (v) => _then(v as UpdateAddSuccess));

  @override
  UpdateAddSuccess get _value => super._value as UpdateAddSuccess;
}

class _$UpdateAddSuccess implements UpdateAddSuccess {
  const _$UpdateAddSuccess();

  @override
  String toString() {
    return 'WorkoutActorState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateAddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateAddSuccess implements WorkoutActorState {
  const factory UpdateAddSuccess() = _$UpdateAddSuccess;
}

abstract class $UpdateFailureCopyWith<$Res> {
  factory $UpdateFailureCopyWith(
          UpdateFailure value, $Res Function(UpdateFailure) then) =
      _$UpdateFailureCopyWithImpl<$Res>;
  $Res call({FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

class _$UpdateFailureCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $UpdateFailureCopyWith<$Res> {
  _$UpdateFailureCopyWithImpl(
      UpdateFailure _value, $Res Function(UpdateFailure) _then)
      : super(_value, (v) => _then(v as UpdateFailure));

  @override
  UpdateFailure get _value => super._value as UpdateFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(UpdateFailure(
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

class _$UpdateFailure implements UpdateFailure {
  const _$UpdateFailure(this.failure) : assert(failure != null);

  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'WorkoutActorState.updateFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $UpdateFailureCopyWith<UpdateFailure> get copyWith =>
      _$UpdateFailureCopyWithImpl<UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return updateFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateFailure implements WorkoutActorState {
  const factory UpdateFailure(FirebaseFailure failure) = _$UpdateFailure;

  FirebaseFailure get failure;
  $UpdateFailureCopyWith<UpdateFailure> get copyWith;
}

abstract class $DeleteSuccessCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(
          DeleteSuccess value, $Res Function(DeleteSuccess) then) =
      _$DeleteSuccessCopyWithImpl<$Res>;
}

class _$DeleteSuccessCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(
      DeleteSuccess _value, $Res Function(DeleteSuccess) _then)
      : super(_value, (v) => _then(v as DeleteSuccess));

  @override
  DeleteSuccess get _value => super._value as DeleteSuccess;
}

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'WorkoutActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements WorkoutActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}

abstract class $DeleteFailureCopyWith<$Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure value, $Res Function(DeleteFailure) then) =
      _$DeleteFailureCopyWithImpl<$Res>;
  $Res call({FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

class _$DeleteFailureCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements $DeleteFailureCopyWith<$Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure _value, $Res Function(DeleteFailure) _then)
      : super(_value, (v) => _then(v as DeleteFailure));

  @override
  DeleteFailure get _value => super._value as DeleteFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(DeleteFailure(
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

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.failure) : assert(failure != null);

  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'WorkoutActorState.deleteFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      _$DeleteFailureCopyWithImpl<DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadedWorkout(Workout currentWorkout),
    @required Result actionInProgress(),
    @required Result addSuccess(),
    @required Result addFailure(FirebaseFailure failure),
    @required Result updateSuccess(),
    @required Result updateFailure(FirebaseFailure failure),
    @required Result deleteSuccess(),
    @required Result deleteFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadedWorkout(Workout currentWorkout),
    Result actionInProgress(),
    Result addSuccess(),
    Result addFailure(FirebaseFailure failure),
    Result updateSuccess(),
    Result updateFailure(FirebaseFailure failure),
    Result deleteSuccess(),
    Result deleteFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadedWorkout(Changed value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result addSuccess(AddSuccess value),
    @required Result addFailure(AddFailure value),
    @required Result updateSuccess(UpdateAddSuccess value),
    @required Result updateFailure(UpdateFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
  }) {
    assert(initial != null);
    assert(loadedWorkout != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(addFailure != null);
    assert(updateSuccess != null);
    assert(updateFailure != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadedWorkout(Changed value),
    Result actionInProgress(ActionInProgress value),
    Result addSuccess(AddSuccess value),
    Result addFailure(AddFailure value),
    Result updateSuccess(UpdateAddSuccess value),
    Result updateFailure(UpdateFailure value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements WorkoutActorState {
  const factory DeleteFailure(FirebaseFailure failure) = _$DeleteFailure;

  FirebaseFailure get failure;
  $DeleteFailureCopyWith<DeleteFailure> get copyWith;
}
