// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'characters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

  CharactersIdle idle() {
    return CharactersIdle();
  }

  CharactersError error() {
    return CharactersError();
  }

  CharactersLoaded loaded({required List<Character> characters}) {
    return CharactersLoaded(
      characters: characters,
    );
  }
}

/// @nodoc
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Character> characters) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersIdle value) idle,
    required TResult Function(CharactersError value) error,
    required TResult Function(CharactersLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class $CharactersIdleCopyWith<$Res> {
  factory $CharactersIdleCopyWith(
          CharactersIdle value, $Res Function(CharactersIdle) then) =
      _$CharactersIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersIdleCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersIdleCopyWith<$Res> {
  _$CharactersIdleCopyWithImpl(
      CharactersIdle _value, $Res Function(CharactersIdle) _then)
      : super(_value, (v) => _then(v as CharactersIdle));

  @override
  CharactersIdle get _value => super._value as CharactersIdle;
}

/// @nodoc

class _$CharactersIdle implements CharactersIdle {
  _$CharactersIdle();

  @override
  String toString() {
    return 'CharactersState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CharactersIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Character> characters) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
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
    required TResult Function(CharactersIdle value) idle,
    required TResult Function(CharactersError value) error,
    required TResult Function(CharactersLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CharactersIdle implements CharactersState {
  factory CharactersIdle() = _$CharactersIdle;
}

/// @nodoc
abstract class $CharactersErrorCopyWith<$Res> {
  factory $CharactersErrorCopyWith(
          CharactersError value, $Res Function(CharactersError) then) =
      _$CharactersErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersErrorCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersErrorCopyWith<$Res> {
  _$CharactersErrorCopyWithImpl(
      CharactersError _value, $Res Function(CharactersError) _then)
      : super(_value, (v) => _then(v as CharactersError));

  @override
  CharactersError get _value => super._value as CharactersError;
}

/// @nodoc

class _$CharactersError implements CharactersError {
  _$CharactersError();

  @override
  String toString() {
    return 'CharactersState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CharactersError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Character> characters) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
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
    required TResult Function(CharactersIdle value) idle,
    required TResult Function(CharactersError value) error,
    required TResult Function(CharactersLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersError implements CharactersState {
  factory CharactersError() = _$CharactersError;
}

/// @nodoc
abstract class $CharactersLoadedCopyWith<$Res> {
  factory $CharactersLoadedCopyWith(
          CharactersLoaded value, $Res Function(CharactersLoaded) then) =
      _$CharactersLoadedCopyWithImpl<$Res>;
  $Res call({List<Character> characters});
}

/// @nodoc
class _$CharactersLoadedCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersLoadedCopyWith<$Res> {
  _$CharactersLoadedCopyWithImpl(
      CharactersLoaded _value, $Res Function(CharactersLoaded) _then)
      : super(_value, (v) => _then(v as CharactersLoaded));

  @override
  CharactersLoaded get _value => super._value as CharactersLoaded;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(CharactersLoaded(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$CharactersLoaded implements CharactersLoaded {
  _$CharactersLoaded({required this.characters});

  @override
  final List<Character> characters;

  @override
  String toString() {
    return 'CharactersState.loaded(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharactersLoaded &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characters);

  @JsonKey(ignore: true)
  @override
  $CharactersLoadedCopyWith<CharactersLoaded> get copyWith =>
      _$CharactersLoadedCopyWithImpl<CharactersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Character> characters) loaded,
  }) {
    return loaded(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
  }) {
    return loaded?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Character> characters)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersIdle value) idle,
    required TResult Function(CharactersError value) error,
    required TResult Function(CharactersLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersIdle value)? idle,
    TResult Function(CharactersError value)? error,
    TResult Function(CharactersLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharactersLoaded implements CharactersState {
  factory CharactersLoaded({required List<Character> characters}) =
      _$CharactersLoaded;

  List<Character> get characters => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersLoadedCopyWith<CharactersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
