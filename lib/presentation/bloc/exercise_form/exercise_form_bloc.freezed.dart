// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseFormEventTearOff {
  const _$ExerciseFormEventTearOff();

  _Initialized initialized(Option<Exercise> initialExerciseOption) {
    return _Initialized(
      initialExerciseOption,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _PartyChanged partyChanged(String party, int index) {
    return _PartyChanged(
      party,
      index,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $ExerciseFormEvent = _$ExerciseFormEventTearOff();

mixin _$ExerciseFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Exercise> initialExerciseOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result partyChanged(String party, int index),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Exercise> initialExerciseOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result partyChanged(String party, int index),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result partyChanged(_PartyChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result partyChanged(_PartyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $ExerciseFormEventCopyWith<$Res> {
  factory $ExerciseFormEventCopyWith(
          ExerciseFormEvent value, $Res Function(ExerciseFormEvent) then) =
      _$ExerciseFormEventCopyWithImpl<$Res>;
}

class _$ExerciseFormEventCopyWithImpl<$Res>
    implements $ExerciseFormEventCopyWith<$Res> {
  _$ExerciseFormEventCopyWithImpl(this._value, this._then);

  final ExerciseFormEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Exercise> initialExerciseOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialExerciseOption = freezed,
  }) {
    return _then(_Initialized(
      initialExerciseOption == freezed
          ? _value.initialExerciseOption
          : initialExerciseOption as Option<Exercise>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialExerciseOption)
      : assert(initialExerciseOption != null);

  @override
  final Option<Exercise> initialExerciseOption;

  @override
  String toString() {
    return 'ExerciseFormEvent.initialized(initialExerciseOption: $initialExerciseOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialExerciseOption, initialExerciseOption) ||
                const DeepCollectionEquality().equals(
                    other.initialExerciseOption, initialExerciseOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialExerciseOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Exercise> initialExerciseOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result partyChanged(String party, int index),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return initialized(initialExerciseOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Exercise> initialExerciseOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result partyChanged(String party, int index),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialExerciseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result partyChanged(_PartyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result partyChanged(_PartyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExerciseFormEvent {
  const factory _Initialized(Option<Exercise> initialExerciseOption) =
      _$_Initialized;

  Option<Exercise> get initialExerciseOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$NameChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ExerciseFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Exercise> initialExerciseOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result partyChanged(String party, int index),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Exercise> initialExerciseOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result partyChanged(String party, int index),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result partyChanged(_PartyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result partyChanged(_PartyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ExerciseFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'ExerciseFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Exercise> initialExerciseOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result partyChanged(String party, int index),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Exercise> initialExerciseOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result partyChanged(String party, int index),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result partyChanged(_PartyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result partyChanged(_PartyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ExerciseFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

abstract class _$PartyChangedCopyWith<$Res> {
  factory _$PartyChangedCopyWith(
          _PartyChanged value, $Res Function(_PartyChanged) then) =
      __$PartyChangedCopyWithImpl<$Res>;
  $Res call({String party, int index});
}

class __$PartyChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$PartyChangedCopyWith<$Res> {
  __$PartyChangedCopyWithImpl(
      _PartyChanged _value, $Res Function(_PartyChanged) _then)
      : super(_value, (v) => _then(v as _PartyChanged));

  @override
  _PartyChanged get _value => super._value as _PartyChanged;

  @override
  $Res call({
    Object party = freezed,
    Object index = freezed,
  }) {
    return _then(_PartyChanged(
      party == freezed ? _value.party : party as String,
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_PartyChanged implements _PartyChanged {
  const _$_PartyChanged(this.party, this.index)
      : assert(party != null),
        assert(index != null);

  @override
  final String party;
  @override
  final int index;

  @override
  String toString() {
    return 'ExerciseFormEvent.partyChanged(party: $party, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PartyChanged &&
            (identical(other.party, party) ||
                const DeepCollectionEquality().equals(other.party, party)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(party) ^
      const DeepCollectionEquality().hash(index);

  @override
  _$PartyChangedCopyWith<_PartyChanged> get copyWith =>
      __$PartyChangedCopyWithImpl<_PartyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Exercise> initialExerciseOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result partyChanged(String party, int index),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return partyChanged(party, index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Exercise> initialExerciseOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result partyChanged(String party, int index),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (partyChanged != null) {
      return partyChanged(party, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result partyChanged(_PartyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return partyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result partyChanged(_PartyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (partyChanged != null) {
      return partyChanged(this);
    }
    return orElse();
  }
}

abstract class _PartyChanged implements ExerciseFormEvent {
  const factory _PartyChanged(String party, int index) = _$_PartyChanged;

  String get party;
  int get index;
  _$PartyChangedCopyWith<_PartyChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ExerciseFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Exercise> initialExerciseOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result partyChanged(String party, int index),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Exercise> initialExerciseOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result partyChanged(String party, int index),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result partyChanged(_PartyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(partyChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result partyChanged(_PartyChanged value),
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

abstract class _Saved implements ExerciseFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$ExerciseFormStateTearOff {
  const _$ExerciseFormStateTearOff();

  _ExerciseFormState call(
      {@required
          Exercise exercise,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption,
      String primaryParty,
      String secondaryParty,
      String tetriaryParty}) {
    return _ExerciseFormState(
      exercise: exercise,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      primaryParty: primaryParty,
      secondaryParty: secondaryParty,
      tetriaryParty: tetriaryParty,
    );
  }
}

// ignore: unused_element
const $ExerciseFormState = _$ExerciseFormStateTearOff();

mixin _$ExerciseFormState {
  Exercise get exercise;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<FirebaseFailure, Unit>> get saveFailureOrSuccessOption;
  String get primaryParty;
  String get secondaryParty;
  String get tetriaryParty;

  $ExerciseFormStateCopyWith<ExerciseFormState> get copyWith;
}

abstract class $ExerciseFormStateCopyWith<$Res> {
  factory $ExerciseFormStateCopyWith(
          ExerciseFormState value, $Res Function(ExerciseFormState) then) =
      _$ExerciseFormStateCopyWithImpl<$Res>;
  $Res call(
      {Exercise exercise,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption,
      String primaryParty,
      String secondaryParty,
      String tetriaryParty});

  $ExerciseCopyWith<$Res> get exercise;
}

class _$ExerciseFormStateCopyWithImpl<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  _$ExerciseFormStateCopyWithImpl(this._value, this._then);

  final ExerciseFormState _value;
  // ignore: unused_field
  final $Res Function(ExerciseFormState) _then;

  @override
  $Res call({
    Object exercise = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object primaryParty = freezed,
    Object secondaryParty = freezed,
    Object tetriaryParty = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<FirebaseFailure, Unit>>,
      primaryParty: primaryParty == freezed
          ? _value.primaryParty
          : primaryParty as String,
      secondaryParty: secondaryParty == freezed
          ? _value.secondaryParty
          : secondaryParty as String,
      tetriaryParty: tetriaryParty == freezed
          ? _value.tetriaryParty
          : tetriaryParty as String,
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

abstract class _$ExerciseFormStateCopyWith<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  factory _$ExerciseFormStateCopyWith(
          _ExerciseFormState value, $Res Function(_ExerciseFormState) then) =
      __$ExerciseFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exercise exercise,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption,
      String primaryParty,
      String secondaryParty,
      String tetriaryParty});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

class __$ExerciseFormStateCopyWithImpl<$Res>
    extends _$ExerciseFormStateCopyWithImpl<$Res>
    implements _$ExerciseFormStateCopyWith<$Res> {
  __$ExerciseFormStateCopyWithImpl(
      _ExerciseFormState _value, $Res Function(_ExerciseFormState) _then)
      : super(_value, (v) => _then(v as _ExerciseFormState));

  @override
  _ExerciseFormState get _value => super._value as _ExerciseFormState;

  @override
  $Res call({
    Object exercise = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object primaryParty = freezed,
    Object secondaryParty = freezed,
    Object tetriaryParty = freezed,
  }) {
    return _then(_ExerciseFormState(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<FirebaseFailure, Unit>>,
      primaryParty: primaryParty == freezed
          ? _value.primaryParty
          : primaryParty as String,
      secondaryParty: secondaryParty == freezed
          ? _value.secondaryParty
          : secondaryParty as String,
      tetriaryParty: tetriaryParty == freezed
          ? _value.tetriaryParty
          : tetriaryParty as String,
    ));
  }
}

class _$_ExerciseFormState implements _ExerciseFormState {
  const _$_ExerciseFormState(
      {@required this.exercise,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption,
      this.primaryParty,
      this.secondaryParty,
      this.tetriaryParty})
      : assert(exercise != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Exercise exercise;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final String primaryParty;
  @override
  final String secondaryParty;
  @override
  final String tetriaryParty;

  @override
  String toString() {
    return 'ExerciseFormState(exercise: $exercise, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, primaryParty: $primaryParty, secondaryParty: $secondaryParty, tetriaryParty: $tetriaryParty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseFormState &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.primaryParty, primaryParty) ||
                const DeepCollectionEquality()
                    .equals(other.primaryParty, primaryParty)) &&
            (identical(other.secondaryParty, secondaryParty) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryParty, secondaryParty)) &&
            (identical(other.tetriaryParty, tetriaryParty) ||
                const DeepCollectionEquality()
                    .equals(other.tetriaryParty, tetriaryParty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(primaryParty) ^
      const DeepCollectionEquality().hash(secondaryParty) ^
      const DeepCollectionEquality().hash(tetriaryParty);

  @override
  _$ExerciseFormStateCopyWith<_ExerciseFormState> get copyWith =>
      __$ExerciseFormStateCopyWithImpl<_ExerciseFormState>(this, _$identity);
}

abstract class _ExerciseFormState implements ExerciseFormState {
  const factory _ExerciseFormState(
      {@required
          Exercise exercise,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<FirebaseFailure, Unit>> saveFailureOrSuccessOption,
      String primaryParty,
      String secondaryParty,
      String tetriaryParty}) = _$_ExerciseFormState;

  @override
  Exercise get exercise;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirebaseFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  String get primaryParty;
  @override
  String get secondaryParty;
  @override
  String get tetriaryParty;
  @override
  _$ExerciseFormStateCopyWith<_ExerciseFormState> get copyWith;
}
