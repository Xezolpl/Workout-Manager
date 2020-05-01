// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BottomNavigationEventTearOff {
  const _$BottomNavigationEventTearOff();

  PageChanged pageChanged(int newIndex) {
    return PageChanged(
      newIndex,
    );
  }
}

// ignore: unused_element
const $BottomNavigationEvent = _$BottomNavigationEventTearOff();

mixin _$BottomNavigationEvent {
  int get newIndex;

  $BottomNavigationEventCopyWith<BottomNavigationEvent> get copyWith;
}

abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

class _$BottomNavigationEventCopyWithImpl<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  final BottomNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationEvent) _then;

  @override
  $Res call({
    Object newIndex = freezed,
  }) {
    return _then(_value.copyWith(
      newIndex: newIndex == freezed ? _value.newIndex : newIndex as int,
    ));
  }
}

abstract class $PageChangedCopyWith<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  factory $PageChangedCopyWith(
          PageChanged value, $Res Function(PageChanged) then) =
      _$PageChangedCopyWithImpl<$Res>;
  @override
  $Res call({int newIndex});
}

class _$PageChangedCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
    implements $PageChangedCopyWith<$Res> {
  _$PageChangedCopyWithImpl(
      PageChanged _value, $Res Function(PageChanged) _then)
      : super(_value, (v) => _then(v as PageChanged));

  @override
  PageChanged get _value => super._value as PageChanged;

  @override
  $Res call({
    Object newIndex = freezed,
  }) {
    return _then(PageChanged(
      newIndex == freezed ? _value.newIndex : newIndex as int,
    ));
  }
}

class _$PageChanged implements PageChanged {
  const _$PageChanged(this.newIndex) : assert(newIndex != null);

  @override
  final int newIndex;

  @override
  String toString() {
    return 'BottomNavigationEvent.pageChanged(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageChanged &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newIndex);

  @override
  $PageChangedCopyWith<PageChanged> get copyWith =>
      _$PageChangedCopyWithImpl<PageChanged>(this, _$identity);
}

abstract class PageChanged implements BottomNavigationEvent {
  const factory PageChanged(int newIndex) = _$PageChanged;

  @override
  int get newIndex;
  @override
  $PageChangedCopyWith<PageChanged> get copyWith;
}

class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

  ExercisesPageS exercisesPage() {
    return const ExercisesPageS();
  }

  WorkoutPageS workoutPage() {
    return const WorkoutPageS();
  }

  AccountPageS accountPage() {
    return const AccountPageS();
  }
}

// ignore: unused_element
const $BottomNavigationState = _$BottomNavigationStateTearOff();

mixin _$BottomNavigationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exercisesPage(),
    @required Result workoutPage(),
    @required Result accountPage(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exercisesPage(),
    Result workoutPage(),
    Result accountPage(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exercisesPage(ExercisesPageS value),
    @required Result workoutPage(WorkoutPageS value),
    @required Result accountPage(AccountPageS value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exercisesPage(ExercisesPageS value),
    Result workoutPage(WorkoutPageS value),
    Result accountPage(AccountPageS value),
    @required Result orElse(),
  });
}

abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
}

class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;
}

abstract class $ExercisesPageSCopyWith<$Res> {
  factory $ExercisesPageSCopyWith(
          ExercisesPageS value, $Res Function(ExercisesPageS) then) =
      _$ExercisesPageSCopyWithImpl<$Res>;
}

class _$ExercisesPageSCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements $ExercisesPageSCopyWith<$Res> {
  _$ExercisesPageSCopyWithImpl(
      ExercisesPageS _value, $Res Function(ExercisesPageS) _then)
      : super(_value, (v) => _then(v as ExercisesPageS));

  @override
  ExercisesPageS get _value => super._value as ExercisesPageS;
}

class _$ExercisesPageS implements ExercisesPageS {
  const _$ExercisesPageS();

  @override
  String toString() {
    return 'BottomNavigationState.exercisesPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExercisesPageS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exercisesPage(),
    @required Result workoutPage(),
    @required Result accountPage(),
  }) {
    assert(exercisesPage != null);
    assert(workoutPage != null);
    assert(accountPage != null);
    return exercisesPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exercisesPage(),
    Result workoutPage(),
    Result accountPage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesPage != null) {
      return exercisesPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exercisesPage(ExercisesPageS value),
    @required Result workoutPage(WorkoutPageS value),
    @required Result accountPage(AccountPageS value),
  }) {
    assert(exercisesPage != null);
    assert(workoutPage != null);
    assert(accountPage != null);
    return exercisesPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exercisesPage(ExercisesPageS value),
    Result workoutPage(WorkoutPageS value),
    Result accountPage(AccountPageS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesPage != null) {
      return exercisesPage(this);
    }
    return orElse();
  }
}

abstract class ExercisesPageS implements BottomNavigationState {
  const factory ExercisesPageS() = _$ExercisesPageS;
}

abstract class $WorkoutPageSCopyWith<$Res> {
  factory $WorkoutPageSCopyWith(
          WorkoutPageS value, $Res Function(WorkoutPageS) then) =
      _$WorkoutPageSCopyWithImpl<$Res>;
}

class _$WorkoutPageSCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements $WorkoutPageSCopyWith<$Res> {
  _$WorkoutPageSCopyWithImpl(
      WorkoutPageS _value, $Res Function(WorkoutPageS) _then)
      : super(_value, (v) => _then(v as WorkoutPageS));

  @override
  WorkoutPageS get _value => super._value as WorkoutPageS;
}

class _$WorkoutPageS implements WorkoutPageS {
  const _$WorkoutPageS();

  @override
  String toString() {
    return 'BottomNavigationState.workoutPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WorkoutPageS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exercisesPage(),
    @required Result workoutPage(),
    @required Result accountPage(),
  }) {
    assert(exercisesPage != null);
    assert(workoutPage != null);
    assert(accountPage != null);
    return workoutPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exercisesPage(),
    Result workoutPage(),
    Result accountPage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutPage != null) {
      return workoutPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exercisesPage(ExercisesPageS value),
    @required Result workoutPage(WorkoutPageS value),
    @required Result accountPage(AccountPageS value),
  }) {
    assert(exercisesPage != null);
    assert(workoutPage != null);
    assert(accountPage != null);
    return workoutPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exercisesPage(ExercisesPageS value),
    Result workoutPage(WorkoutPageS value),
    Result accountPage(AccountPageS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutPage != null) {
      return workoutPage(this);
    }
    return orElse();
  }
}

abstract class WorkoutPageS implements BottomNavigationState {
  const factory WorkoutPageS() = _$WorkoutPageS;
}

abstract class $AccountPageSCopyWith<$Res> {
  factory $AccountPageSCopyWith(
          AccountPageS value, $Res Function(AccountPageS) then) =
      _$AccountPageSCopyWithImpl<$Res>;
}

class _$AccountPageSCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements $AccountPageSCopyWith<$Res> {
  _$AccountPageSCopyWithImpl(
      AccountPageS _value, $Res Function(AccountPageS) _then)
      : super(_value, (v) => _then(v as AccountPageS));

  @override
  AccountPageS get _value => super._value as AccountPageS;
}

class _$AccountPageS implements AccountPageS {
  const _$AccountPageS();

  @override
  String toString() {
    return 'BottomNavigationState.accountPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountPageS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exercisesPage(),
    @required Result workoutPage(),
    @required Result accountPage(),
  }) {
    assert(exercisesPage != null);
    assert(workoutPage != null);
    assert(accountPage != null);
    return accountPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exercisesPage(),
    Result workoutPage(),
    Result accountPage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPage != null) {
      return accountPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exercisesPage(ExercisesPageS value),
    @required Result workoutPage(WorkoutPageS value),
    @required Result accountPage(AccountPageS value),
  }) {
    assert(exercisesPage != null);
    assert(workoutPage != null);
    assert(accountPage != null);
    return accountPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exercisesPage(ExercisesPageS value),
    Result workoutPage(WorkoutPageS value),
    Result accountPage(AccountPageS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPage != null) {
      return accountPage(this);
    }
    return orElse();
  }
}

abstract class AccountPageS implements BottomNavigationState {
  const factory AccountPageS() = _$AccountPageS;
}
