// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return _AuthInfo.fromJson(json);
}

/// @nodoc
class _$AuthInfoTearOff {
  const _$AuthInfoTearOff();

  _AuthInfo call(
      {String? userId,
      String? userName,
      String? userEmail,
      String? idToken,
      DateTime? expirationTime}) {
    return _AuthInfo(
      userId: userId,
      userName: userName,
      userEmail: userEmail,
      idToken: idToken,
      expirationTime: expirationTime,
    );
  }

  AuthInfo fromJson(Map<String, Object> json) {
    return AuthInfo.fromJson(json);
  }
}

/// @nodoc
const $AuthInfo = _$AuthInfoTearOff();

/// @nodoc
mixin _$AuthInfo {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  DateTime? get expirationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthInfoCopyWith<AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoCopyWith<$Res> {
  factory $AuthInfoCopyWith(AuthInfo value, $Res Function(AuthInfo) then) =
      _$AuthInfoCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String? userName,
      String? userEmail,
      String? idToken,
      DateTime? expirationTime});
}

/// @nodoc
class _$AuthInfoCopyWithImpl<$Res> implements $AuthInfoCopyWith<$Res> {
  _$AuthInfoCopyWithImpl(this._value, this._then);

  final AuthInfo _value;
  // ignore: unused_field
  final $Res Function(AuthInfo) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? idToken = freezed,
    Object? expirationTime = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationTime: expirationTime == freezed
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AuthInfoCopyWith<$Res> implements $AuthInfoCopyWith<$Res> {
  factory _$AuthInfoCopyWith(_AuthInfo value, $Res Function(_AuthInfo) then) =
      __$AuthInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String? userName,
      String? userEmail,
      String? idToken,
      DateTime? expirationTime});
}

/// @nodoc
class __$AuthInfoCopyWithImpl<$Res> extends _$AuthInfoCopyWithImpl<$Res>
    implements _$AuthInfoCopyWith<$Res> {
  __$AuthInfoCopyWithImpl(_AuthInfo _value, $Res Function(_AuthInfo) _then)
      : super(_value, (v) => _then(v as _AuthInfo));

  @override
  _AuthInfo get _value => super._value as _AuthInfo;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? idToken = freezed,
    Object? expirationTime = freezed,
  }) {
    return _then(_AuthInfo(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationTime: expirationTime == freezed
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthInfo implements _AuthInfo {
  const _$_AuthInfo(
      {this.userId,
      this.userName,
      this.userEmail,
      this.idToken,
      this.expirationTime});

  factory _$_AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AuthInfoFromJson(json);

  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? userEmail;
  @override
  final String? idToken;
  @override
  final DateTime? expirationTime;

  @override
  String toString() {
    return 'AuthInfo(userId: $userId, userName: $userName, userEmail: $userEmail, idToken: $idToken, expirationTime: $expirationTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthInfo &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.expirationTime, expirationTime) ||
                const DeepCollectionEquality()
                    .equals(other.expirationTime, expirationTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(expirationTime);

  @JsonKey(ignore: true)
  @override
  _$AuthInfoCopyWith<_AuthInfo> get copyWith =>
      __$AuthInfoCopyWithImpl<_AuthInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthInfoToJson(this);
  }
}

abstract class _AuthInfo implements AuthInfo {
  const factory _AuthInfo(
      {String? userId,
      String? userName,
      String? userEmail,
      String? idToken,
      DateTime? expirationTime}) = _$_AuthInfo;

  factory _AuthInfo.fromJson(Map<String, dynamic> json) = _$_AuthInfo.fromJson;

  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get userEmail => throw _privateConstructorUsedError;
  @override
  String? get idToken => throw _privateConstructorUsedError;
  @override
  DateTime? get expirationTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthInfoCopyWith<_AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
