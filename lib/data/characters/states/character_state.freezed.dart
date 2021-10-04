// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterStateTearOff {
  const _$CharacterStateTearOff();

  CharacterIdle idle() {
    return CharacterIdle();
  }

  CharacterError error() {
    return CharacterError();
  }

  CharacterUnknown unknown() {
    return CharacterUnknown();
  }

  CharacterLoaded loaded({required Character character}) {
    return CharacterLoaded(
      character: character,
    );
  }
}

/// @nodoc
const $CharacterState = _$CharacterStateTearOff();

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function() unknown,
    required TResult Function(Character character) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterIdle value) idle,
    required TResult Function(CharacterError value) error,
    required TResult Function(CharacterUnknown value) unknown,
    required TResult Function(CharacterLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  final CharacterState _value;
  // ignore: unused_field
  final $Res Function(CharacterState) _then;
}

/// @nodoc
abstract class $CharacterIdleCopyWith<$Res> {
  factory $CharacterIdleCopyWith(
          CharacterIdle value, $Res Function(CharacterIdle) then) =
      _$CharacterIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterIdleCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterIdleCopyWith<$Res> {
  _$CharacterIdleCopyWithImpl(
      CharacterIdle _value, $Res Function(CharacterIdle) _then)
      : super(_value, (v) => _then(v as CharacterIdle));

  @override
  CharacterIdle get _value => super._value as CharacterIdle;
}

/// @nodoc

class _$CharacterIdle implements CharacterIdle {
  _$CharacterIdle();

  @override
  String toString() {
    return 'CharacterState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CharacterIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function() unknown,
    required TResult Function(Character character) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterIdle value) idle,
    required TResult Function(CharacterError value) error,
    required TResult Function(CharacterUnknown value) unknown,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CharacterIdle implements CharacterState {
  factory CharacterIdle() = _$CharacterIdle;
}

/// @nodoc
abstract class $CharacterErrorCopyWith<$Res> {
  factory $CharacterErrorCopyWith(
          CharacterError value, $Res Function(CharacterError) then) =
      _$CharacterErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterErrorCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterErrorCopyWith<$Res> {
  _$CharacterErrorCopyWithImpl(
      CharacterError _value, $Res Function(CharacterError) _then)
      : super(_value, (v) => _then(v as CharacterError));

  @override
  CharacterError get _value => super._value as CharacterError;
}

/// @nodoc

class _$CharacterError implements CharacterError {
  _$CharacterError();

  @override
  String toString() {
    return 'CharacterState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CharacterError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function() unknown,
    required TResult Function(Character character) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterIdle value) idle,
    required TResult Function(CharacterError value) error,
    required TResult Function(CharacterUnknown value) unknown,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterError implements CharacterState {
  factory CharacterError() = _$CharacterError;
}

/// @nodoc
abstract class $CharacterUnknownCopyWith<$Res> {
  factory $CharacterUnknownCopyWith(
          CharacterUnknown value, $Res Function(CharacterUnknown) then) =
      _$CharacterUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterUnknownCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterUnknownCopyWith<$Res> {
  _$CharacterUnknownCopyWithImpl(
      CharacterUnknown _value, $Res Function(CharacterUnknown) _then)
      : super(_value, (v) => _then(v as CharacterUnknown));

  @override
  CharacterUnknown get _value => super._value as CharacterUnknown;
}

/// @nodoc

class _$CharacterUnknown implements CharacterUnknown {
  _$CharacterUnknown();

  @override
  String toString() {
    return 'CharacterState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CharacterUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function() unknown,
    required TResult Function(Character character) loaded,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterIdle value) idle,
    required TResult Function(CharacterError value) error,
    required TResult Function(CharacterUnknown value) unknown,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class CharacterUnknown implements CharacterState {
  factory CharacterUnknown() = _$CharacterUnknown;
}

/// @nodoc
abstract class $CharacterLoadedCopyWith<$Res> {
  factory $CharacterLoadedCopyWith(
          CharacterLoaded value, $Res Function(CharacterLoaded) then) =
      _$CharacterLoadedCopyWithImpl<$Res>;
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class _$CharacterLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterLoadedCopyWith<$Res> {
  _$CharacterLoadedCopyWithImpl(
      CharacterLoaded _value, $Res Function(CharacterLoaded) _then)
      : super(_value, (v) => _then(v as CharacterLoaded));

  @override
  CharacterLoaded get _value => super._value as CharacterLoaded;

  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(CharacterLoaded(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$CharacterLoaded implements CharacterLoaded {
  _$CharacterLoaded({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterState.loaded(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharacterLoaded &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  $CharacterLoadedCopyWith<CharacterLoaded> get copyWith =>
      _$CharacterLoadedCopyWithImpl<CharacterLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function() unknown,
    required TResult Function(Character character) loaded,
  }) {
    return loaded(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
  }) {
    return loaded?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function()? unknown,
    TResult Function(Character character)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterIdle value) idle,
    required TResult Function(CharacterError value) error,
    required TResult Function(CharacterUnknown value) unknown,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterIdle value)? idle,
    TResult Function(CharacterError value)? error,
    TResult Function(CharacterUnknown value)? unknown,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterLoaded implements CharacterState {
  factory CharacterLoaded({required Character character}) = _$CharacterLoaded;

  Character get character => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterLoadedCopyWith<CharacterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
