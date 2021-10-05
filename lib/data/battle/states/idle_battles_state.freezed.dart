// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'idle_battles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IdleBattlesStateTearOff {
  const _$IdleBattlesStateTearOff();

  IdleBattlesIdle idle() {
    return IdleBattlesIdle();
  }

  IdleBattlesError error() {
    return IdleBattlesError();
  }

  IdleBattlesLoaded loaded({required List<Battle> battles}) {
    return IdleBattlesLoaded(
      battles: battles,
    );
  }
}

/// @nodoc
const $IdleBattlesState = _$IdleBattlesStateTearOff();

/// @nodoc
mixin _$IdleBattlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Battle> battles) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBattlesIdle value) idle,
    required TResult Function(IdleBattlesError value) error,
    required TResult Function(IdleBattlesLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdleBattlesStateCopyWith<$Res> {
  factory $IdleBattlesStateCopyWith(
          IdleBattlesState value, $Res Function(IdleBattlesState) then) =
      _$IdleBattlesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleBattlesStateCopyWithImpl<$Res>
    implements $IdleBattlesStateCopyWith<$Res> {
  _$IdleBattlesStateCopyWithImpl(this._value, this._then);

  final IdleBattlesState _value;
  // ignore: unused_field
  final $Res Function(IdleBattlesState) _then;
}

/// @nodoc
abstract class $IdleBattlesIdleCopyWith<$Res> {
  factory $IdleBattlesIdleCopyWith(
          IdleBattlesIdle value, $Res Function(IdleBattlesIdle) then) =
      _$IdleBattlesIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleBattlesIdleCopyWithImpl<$Res>
    extends _$IdleBattlesStateCopyWithImpl<$Res>
    implements $IdleBattlesIdleCopyWith<$Res> {
  _$IdleBattlesIdleCopyWithImpl(
      IdleBattlesIdle _value, $Res Function(IdleBattlesIdle) _then)
      : super(_value, (v) => _then(v as IdleBattlesIdle));

  @override
  IdleBattlesIdle get _value => super._value as IdleBattlesIdle;
}

/// @nodoc

class _$IdleBattlesIdle implements IdleBattlesIdle {
  _$IdleBattlesIdle();

  @override
  String toString() {
    return 'IdleBattlesState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdleBattlesIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Battle> battles) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
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
    required TResult Function(IdleBattlesIdle value) idle,
    required TResult Function(IdleBattlesError value) error,
    required TResult Function(IdleBattlesLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleBattlesIdle implements IdleBattlesState {
  factory IdleBattlesIdle() = _$IdleBattlesIdle;
}

/// @nodoc
abstract class $IdleBattlesErrorCopyWith<$Res> {
  factory $IdleBattlesErrorCopyWith(
          IdleBattlesError value, $Res Function(IdleBattlesError) then) =
      _$IdleBattlesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleBattlesErrorCopyWithImpl<$Res>
    extends _$IdleBattlesStateCopyWithImpl<$Res>
    implements $IdleBattlesErrorCopyWith<$Res> {
  _$IdleBattlesErrorCopyWithImpl(
      IdleBattlesError _value, $Res Function(IdleBattlesError) _then)
      : super(_value, (v) => _then(v as IdleBattlesError));

  @override
  IdleBattlesError get _value => super._value as IdleBattlesError;
}

/// @nodoc

class _$IdleBattlesError implements IdleBattlesError {
  _$IdleBattlesError();

  @override
  String toString() {
    return 'IdleBattlesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdleBattlesError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Battle> battles) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
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
    required TResult Function(IdleBattlesIdle value) idle,
    required TResult Function(IdleBattlesError value) error,
    required TResult Function(IdleBattlesLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IdleBattlesError implements IdleBattlesState {
  factory IdleBattlesError() = _$IdleBattlesError;
}

/// @nodoc
abstract class $IdleBattlesLoadedCopyWith<$Res> {
  factory $IdleBattlesLoadedCopyWith(
          IdleBattlesLoaded value, $Res Function(IdleBattlesLoaded) then) =
      _$IdleBattlesLoadedCopyWithImpl<$Res>;
  $Res call({List<Battle> battles});
}

/// @nodoc
class _$IdleBattlesLoadedCopyWithImpl<$Res>
    extends _$IdleBattlesStateCopyWithImpl<$Res>
    implements $IdleBattlesLoadedCopyWith<$Res> {
  _$IdleBattlesLoadedCopyWithImpl(
      IdleBattlesLoaded _value, $Res Function(IdleBattlesLoaded) _then)
      : super(_value, (v) => _then(v as IdleBattlesLoaded));

  @override
  IdleBattlesLoaded get _value => super._value as IdleBattlesLoaded;

  @override
  $Res call({
    Object? battles = freezed,
  }) {
    return _then(IdleBattlesLoaded(
      battles: battles == freezed
          ? _value.battles
          : battles // ignore: cast_nullable_to_non_nullable
              as List<Battle>,
    ));
  }
}

/// @nodoc

class _$IdleBattlesLoaded implements IdleBattlesLoaded {
  _$IdleBattlesLoaded({required this.battles});

  @override
  final List<Battle> battles;

  @override
  String toString() {
    return 'IdleBattlesState.loaded(battles: $battles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdleBattlesLoaded &&
            (identical(other.battles, battles) ||
                const DeepCollectionEquality().equals(other.battles, battles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(battles);

  @JsonKey(ignore: true)
  @override
  $IdleBattlesLoadedCopyWith<IdleBattlesLoaded> get copyWith =>
      _$IdleBattlesLoadedCopyWithImpl<IdleBattlesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Battle> battles) loaded,
  }) {
    return loaded(battles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
  }) {
    return loaded?.call(battles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Battle> battles)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(battles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBattlesIdle value) idle,
    required TResult Function(IdleBattlesError value) error,
    required TResult Function(IdleBattlesLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBattlesIdle value)? idle,
    TResult Function(IdleBattlesError value)? error,
    TResult Function(IdleBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class IdleBattlesLoaded implements IdleBattlesState {
  factory IdleBattlesLoaded({required List<Battle> battles}) =
      _$IdleBattlesLoaded;

  List<Battle> get battles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdleBattlesLoadedCopyWith<IdleBattlesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
