// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_battles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserBattlesStateTearOff {
  const _$UserBattlesStateTearOff();

  UserBattlesIdle idle() {
    return UserBattlesIdle();
  }

  UserBattlesError error() {
    return UserBattlesError();
  }

  UserBattlesLoaded loaded({required List<Battle> battles}) {
    return UserBattlesLoaded(
      battles: battles,
    );
  }
}

/// @nodoc
const $UserBattlesState = _$UserBattlesStateTearOff();

/// @nodoc
mixin _$UserBattlesState {
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
    required TResult Function(UserBattlesIdle value) idle,
    required TResult Function(UserBattlesError value) error,
    required TResult Function(UserBattlesLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBattlesStateCopyWith<$Res> {
  factory $UserBattlesStateCopyWith(
          UserBattlesState value, $Res Function(UserBattlesState) then) =
      _$UserBattlesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBattlesStateCopyWithImpl<$Res>
    implements $UserBattlesStateCopyWith<$Res> {
  _$UserBattlesStateCopyWithImpl(this._value, this._then);

  final UserBattlesState _value;
  // ignore: unused_field
  final $Res Function(UserBattlesState) _then;
}

/// @nodoc
abstract class $UserBattlesIdleCopyWith<$Res> {
  factory $UserBattlesIdleCopyWith(
          UserBattlesIdle value, $Res Function(UserBattlesIdle) then) =
      _$UserBattlesIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBattlesIdleCopyWithImpl<$Res>
    extends _$UserBattlesStateCopyWithImpl<$Res>
    implements $UserBattlesIdleCopyWith<$Res> {
  _$UserBattlesIdleCopyWithImpl(
      UserBattlesIdle _value, $Res Function(UserBattlesIdle) _then)
      : super(_value, (v) => _then(v as UserBattlesIdle));

  @override
  UserBattlesIdle get _value => super._value as UserBattlesIdle;
}

/// @nodoc

class _$UserBattlesIdle implements UserBattlesIdle {
  _$UserBattlesIdle();

  @override
  String toString() {
    return 'UserBattlesState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserBattlesIdle);
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
    required TResult Function(UserBattlesIdle value) idle,
    required TResult Function(UserBattlesError value) error,
    required TResult Function(UserBattlesLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class UserBattlesIdle implements UserBattlesState {
  factory UserBattlesIdle() = _$UserBattlesIdle;
}

/// @nodoc
abstract class $UserBattlesErrorCopyWith<$Res> {
  factory $UserBattlesErrorCopyWith(
          UserBattlesError value, $Res Function(UserBattlesError) then) =
      _$UserBattlesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBattlesErrorCopyWithImpl<$Res>
    extends _$UserBattlesStateCopyWithImpl<$Res>
    implements $UserBattlesErrorCopyWith<$Res> {
  _$UserBattlesErrorCopyWithImpl(
      UserBattlesError _value, $Res Function(UserBattlesError) _then)
      : super(_value, (v) => _then(v as UserBattlesError));

  @override
  UserBattlesError get _value => super._value as UserBattlesError;
}

/// @nodoc

class _$UserBattlesError implements UserBattlesError {
  _$UserBattlesError();

  @override
  String toString() {
    return 'UserBattlesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserBattlesError);
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
    required TResult Function(UserBattlesIdle value) idle,
    required TResult Function(UserBattlesError value) error,
    required TResult Function(UserBattlesLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserBattlesError implements UserBattlesState {
  factory UserBattlesError() = _$UserBattlesError;
}

/// @nodoc
abstract class $UserBattlesLoadedCopyWith<$Res> {
  factory $UserBattlesLoadedCopyWith(
          UserBattlesLoaded value, $Res Function(UserBattlesLoaded) then) =
      _$UserBattlesLoadedCopyWithImpl<$Res>;
  $Res call({List<Battle> battles});
}

/// @nodoc
class _$UserBattlesLoadedCopyWithImpl<$Res>
    extends _$UserBattlesStateCopyWithImpl<$Res>
    implements $UserBattlesLoadedCopyWith<$Res> {
  _$UserBattlesLoadedCopyWithImpl(
      UserBattlesLoaded _value, $Res Function(UserBattlesLoaded) _then)
      : super(_value, (v) => _then(v as UserBattlesLoaded));

  @override
  UserBattlesLoaded get _value => super._value as UserBattlesLoaded;

  @override
  $Res call({
    Object? battles = freezed,
  }) {
    return _then(UserBattlesLoaded(
      battles: battles == freezed
          ? _value.battles
          : battles // ignore: cast_nullable_to_non_nullable
              as List<Battle>,
    ));
  }
}

/// @nodoc

class _$UserBattlesLoaded implements UserBattlesLoaded {
  _$UserBattlesLoaded({required this.battles});

  @override
  final List<Battle> battles;

  @override
  String toString() {
    return 'UserBattlesState.loaded(battles: $battles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBattlesLoaded &&
            (identical(other.battles, battles) ||
                const DeepCollectionEquality().equals(other.battles, battles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(battles);

  @JsonKey(ignore: true)
  @override
  $UserBattlesLoadedCopyWith<UserBattlesLoaded> get copyWith =>
      _$UserBattlesLoadedCopyWithImpl<UserBattlesLoaded>(this, _$identity);

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
    required TResult Function(UserBattlesIdle value) idle,
    required TResult Function(UserBattlesError value) error,
    required TResult Function(UserBattlesLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBattlesIdle value)? idle,
    TResult Function(UserBattlesError value)? error,
    TResult Function(UserBattlesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserBattlesLoaded implements UserBattlesState {
  factory UserBattlesLoaded({required List<Battle> battles}) =
      _$UserBattlesLoaded;

  List<Battle> get battles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBattlesLoadedCopyWith<UserBattlesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
