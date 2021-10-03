// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateIdle idle() {
    return AuthStateIdle();
  }

  AuthStateAuthenticating authenticating() {
    return AuthStateAuthenticating();
  }

  AuthStateAuthenticated authenticated({required AuthInfo authInfo}) {
    return AuthStateAuthenticated(
      authInfo: authInfo,
    );
  }

  AuthStateNotAuthenticated notAuthenticated() {
    return AuthStateNotAuthenticated();
  }

  AuthStateFailure failure() {
    return AuthStateFailure();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() authenticating,
    required TResult Function(AuthInfo authInfo) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateAuthenticating value) authenticating,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AuthStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateIdleCopyWith<$Res> {
  factory $AuthStateIdleCopyWith(
          AuthStateIdle value, $Res Function(AuthStateIdle) then) =
      _$AuthStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateIdleCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateIdleCopyWith<$Res> {
  _$AuthStateIdleCopyWithImpl(
      AuthStateIdle _value, $Res Function(AuthStateIdle) _then)
      : super(_value, (v) => _then(v as AuthStateIdle));

  @override
  AuthStateIdle get _value => super._value as AuthStateIdle;
}

/// @nodoc

class _$AuthStateIdle implements AuthStateIdle {
  _$AuthStateIdle();

  @override
  String toString() {
    return 'AuthState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() authenticating,
    required TResult Function(AuthInfo authInfo) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
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
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateAuthenticating value) authenticating,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AuthStateIdle implements AuthState {
  factory AuthStateIdle() = _$AuthStateIdle;
}

/// @nodoc
abstract class $AuthStateAuthenticatingCopyWith<$Res> {
  factory $AuthStateAuthenticatingCopyWith(AuthStateAuthenticating value,
          $Res Function(AuthStateAuthenticating) then) =
      _$AuthStateAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateAuthenticatingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateAuthenticatingCopyWith<$Res> {
  _$AuthStateAuthenticatingCopyWithImpl(AuthStateAuthenticating _value,
      $Res Function(AuthStateAuthenticating) _then)
      : super(_value, (v) => _then(v as AuthStateAuthenticating));

  @override
  AuthStateAuthenticating get _value => super._value as AuthStateAuthenticating;
}

/// @nodoc

class _$AuthStateAuthenticating implements AuthStateAuthenticating {
  _$AuthStateAuthenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateAuthenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() authenticating,
    required TResult Function(AuthInfo authInfo) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() failure,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateAuthenticating value) authenticating,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthenticating implements AuthState {
  factory AuthStateAuthenticating() = _$AuthStateAuthenticating;
}

/// @nodoc
abstract class $AuthStateAuthenticatedCopyWith<$Res> {
  factory $AuthStateAuthenticatedCopyWith(AuthStateAuthenticated value,
          $Res Function(AuthStateAuthenticated) then) =
      _$AuthStateAuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthInfo authInfo});

  $AuthInfoCopyWith<$Res> get authInfo;
}

/// @nodoc
class _$AuthStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateAuthenticatedCopyWith<$Res> {
  _$AuthStateAuthenticatedCopyWithImpl(AuthStateAuthenticated _value,
      $Res Function(AuthStateAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthStateAuthenticated));

  @override
  AuthStateAuthenticated get _value => super._value as AuthStateAuthenticated;

  @override
  $Res call({
    Object? authInfo = freezed,
  }) {
    return _then(AuthStateAuthenticated(
      authInfo: authInfo == freezed
          ? _value.authInfo
          : authInfo // ignore: cast_nullable_to_non_nullable
              as AuthInfo,
    ));
  }

  @override
  $AuthInfoCopyWith<$Res> get authInfo {
    return $AuthInfoCopyWith<$Res>(_value.authInfo, (value) {
      return _then(_value.copyWith(authInfo: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthenticated implements AuthStateAuthenticated {
  _$AuthStateAuthenticated({required this.authInfo});

  @override
  final AuthInfo authInfo;

  @override
  String toString() {
    return 'AuthState.authenticated(authInfo: $authInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateAuthenticated &&
            (identical(other.authInfo, authInfo) ||
                const DeepCollectionEquality()
                    .equals(other.authInfo, authInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authInfo);

  @JsonKey(ignore: true)
  @override
  $AuthStateAuthenticatedCopyWith<AuthStateAuthenticated> get copyWith =>
      _$AuthStateAuthenticatedCopyWithImpl<AuthStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() authenticating,
    required TResult Function(AuthInfo authInfo) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() failure,
  }) {
    return authenticated(authInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
  }) {
    return authenticated?.call(authInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(authInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateAuthenticating value) authenticating,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthenticated implements AuthState {
  factory AuthStateAuthenticated({required AuthInfo authInfo}) =
      _$AuthStateAuthenticated;

  AuthInfo get authInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateAuthenticatedCopyWith<AuthStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateNotAuthenticatedCopyWith<$Res> {
  factory $AuthStateNotAuthenticatedCopyWith(AuthStateNotAuthenticated value,
          $Res Function(AuthStateNotAuthenticated) then) =
      _$AuthStateNotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateNotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateNotAuthenticatedCopyWith<$Res> {
  _$AuthStateNotAuthenticatedCopyWithImpl(AuthStateNotAuthenticated _value,
      $Res Function(AuthStateNotAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthStateNotAuthenticated));

  @override
  AuthStateNotAuthenticated get _value =>
      super._value as AuthStateNotAuthenticated;
}

/// @nodoc

class _$AuthStateNotAuthenticated implements AuthStateNotAuthenticated {
  _$AuthStateNotAuthenticated();

  @override
  String toString() {
    return 'AuthState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateNotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() authenticating,
    required TResult Function(AuthInfo authInfo) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() failure,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateAuthenticating value) authenticating,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateNotAuthenticated implements AuthState {
  factory AuthStateNotAuthenticated() = _$AuthStateNotAuthenticated;
}

/// @nodoc
abstract class $AuthStateFailureCopyWith<$Res> {
  factory $AuthStateFailureCopyWith(
          AuthStateFailure value, $Res Function(AuthStateFailure) then) =
      _$AuthStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateFailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateFailureCopyWith<$Res> {
  _$AuthStateFailureCopyWithImpl(
      AuthStateFailure _value, $Res Function(AuthStateFailure) _then)
      : super(_value, (v) => _then(v as AuthStateFailure));

  @override
  AuthStateFailure get _value => super._value as AuthStateFailure;
}

/// @nodoc

class _$AuthStateFailure implements AuthStateFailure {
  _$AuthStateFailure();

  @override
  String toString() {
    return 'AuthState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() authenticating,
    required TResult Function(AuthInfo authInfo) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? authenticating,
    TResult Function(AuthInfo authInfo)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateAuthenticating value) authenticating,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateAuthenticating value)? authenticating,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthStateFailure implements AuthState {
  factory AuthStateFailure() = _$AuthStateFailure;
}
