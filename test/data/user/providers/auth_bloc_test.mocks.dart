// Mocks generated by Mockito 5.0.16 from annotations
// in guardians_of_nature/test/data/user/providers/auth_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:google_sign_in/google_sign_in.dart' as _i2;
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart'
    as _i6;
import 'package:guardians_of_nature/data/user/sources/google_sign_in_service.dart'
    as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeGoogleSignInAuthentication_0 extends _i1.Fake
    implements _i2.GoogleSignInAuthentication {}

class _FakeUserMetadata_1 extends _i1.Fake implements _i3.UserMetadata {}

class _FakeIdTokenResult_2 extends _i1.Fake implements _i3.IdTokenResult {}

class _FakeUserCredential_3 extends _i1.Fake implements _i3.UserCredential {}

class _FakeConfirmationResult_4 extends _i1.Fake
    implements _i3.ConfirmationResult {}

class _FakeUser_5 extends _i1.Fake implements _i3.User {}

/// A class which mocks [FlutterSecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterSecureStorage extends _i1.Mock
    implements _i4.FlutterSecureStorage {
  MockFlutterSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> write(
          {String? key,
          String? value,
          _i4.IOSOptions? iOptions = _i4.IOSOptions.defaultOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#write, [], {
            #key: key,
            #value: value,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<String?> read(
          {String? key,
          _i4.IOSOptions? iOptions = _i4.IOSOptions.defaultOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#read, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions
          }),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<bool> containsKey(
          {String? key,
          _i4.IOSOptions? iOptions = _i4.IOSOptions.defaultOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#containsKey, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions
          }),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<void> delete(
          {String? key,
          _i4.IOSOptions? iOptions = _i4.IOSOptions.defaultOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<Map<String, String>> readAll(
          {_i4.IOSOptions? iOptions = _i4.IOSOptions.defaultOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions}) =>
      (super.noSuchMethod(
              Invocation.method(#readAll, [], {
                #iOptions: iOptions,
                #aOptions: aOptions,
                #lOptions: lOptions
              }),
              returnValue:
                  Future<Map<String, String>>.value(<String, String>{}))
          as _i5.Future<Map<String, String>>);
  @override
  _i5.Future<void> deleteAll(
          {_i4.IOSOptions? iOptions = _i4.IOSOptions.defaultOptions,
          _i4.AndroidOptions? aOptions,
          _i4.LinuxOptions? lOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#deleteAll, [],
              {#iOptions: iOptions, #aOptions: aOptions, #lOptions: lOptions}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [GoogleSignIn].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleSignIn extends _i1.Mock implements _i2.GoogleSignIn {
  MockGoogleSignIn() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.SignInOption get signInOption =>
      (super.noSuchMethod(Invocation.getter(#signInOption),
          returnValue: _i6.SignInOption.standard) as _i6.SignInOption);
  @override
  List<String> get scopes =>
      (super.noSuchMethod(Invocation.getter(#scopes), returnValue: <String>[])
          as List<String>);
  @override
  _i5.Stream<_i2.GoogleSignInAccount?> get onCurrentUserChanged =>
      (super.noSuchMethod(Invocation.getter(#onCurrentUserChanged),
              returnValue: Stream<_i2.GoogleSignInAccount?>.empty())
          as _i5.Stream<_i2.GoogleSignInAccount?>);
  @override
  _i5.Future<_i2.GoogleSignInAccount?> signInSilently(
          {bool? suppressErrors = true, bool? reAuthenticate = false}) =>
      (super.noSuchMethod(
              Invocation.method(#signInSilently, [], {
                #suppressErrors: suppressErrors,
                #reAuthenticate: reAuthenticate
              }),
              returnValue: Future<_i2.GoogleSignInAccount?>.value())
          as _i5.Future<_i2.GoogleSignInAccount?>);
  @override
  _i5.Future<bool> isSignedIn() =>
      (super.noSuchMethod(Invocation.method(#isSignedIn, []),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<_i2.GoogleSignInAccount?> signIn() =>
      (super.noSuchMethod(Invocation.method(#signIn, []),
              returnValue: Future<_i2.GoogleSignInAccount?>.value())
          as _i5.Future<_i2.GoogleSignInAccount?>);
  @override
  _i5.Future<_i2.GoogleSignInAccount?> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
              returnValue: Future<_i2.GoogleSignInAccount?>.value())
          as _i5.Future<_i2.GoogleSignInAccount?>);
  @override
  _i5.Future<_i2.GoogleSignInAccount?> disconnect() =>
      (super.noSuchMethod(Invocation.method(#disconnect, []),
              returnValue: Future<_i2.GoogleSignInAccount?>.value())
          as _i5.Future<_i2.GoogleSignInAccount?>);
  @override
  _i5.Future<bool> requestScopes(List<String>? scopes) =>
      (super.noSuchMethod(Invocation.method(#requestScopes, [scopes]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [GoogleSignInAccount].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleSignInAccount extends _i1.Mock
    implements _i2.GoogleSignInAccount {
  MockGoogleSignInAccount() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get email =>
      (super.noSuchMethod(Invocation.getter(#email), returnValue: '')
          as String);
  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i5.Future<_i2.GoogleSignInAuthentication> get authentication =>
      (super.noSuchMethod(Invocation.getter(#authentication),
              returnValue: Future<_i2.GoogleSignInAuthentication>.value(
                  _FakeGoogleSignInAuthentication_0()))
          as _i5.Future<_i2.GoogleSignInAuthentication>);
  @override
  _i5.Future<Map<String, String>> get authHeaders => (super.noSuchMethod(
          Invocation.getter(#authHeaders),
          returnValue: Future<Map<String, String>>.value(<String, String>{}))
      as _i5.Future<Map<String, String>>);
  @override
  _i5.Future<void> clearAuthCache() =>
      (super.noSuchMethod(Invocation.method(#clearAuthCache, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [GoogleSignInService].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleSignInService extends _i1.Mock
    implements _i7.GoogleSignInService {
  MockGoogleSignInService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.User?> signInWithGoogleAccount(
          _i2.GoogleSignInAccount? googleSignInAccount) =>
      (super.noSuchMethod(
          Invocation.method(#signInWithGoogleAccount, [googleSignInAccount]),
          returnValue: Future<_i3.User?>.value()) as _i5.Future<_i3.User?>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i3.User {
  MockUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get emailVerified =>
      (super.noSuchMethod(Invocation.getter(#emailVerified), returnValue: false)
          as bool);
  @override
  bool get isAnonymous =>
      (super.noSuchMethod(Invocation.getter(#isAnonymous), returnValue: false)
          as bool);
  @override
  _i3.UserMetadata get metadata =>
      (super.noSuchMethod(Invocation.getter(#metadata),
          returnValue: _FakeUserMetadata_1()) as _i3.UserMetadata);
  @override
  List<_i3.UserInfo> get providerData =>
      (super.noSuchMethod(Invocation.getter(#providerData),
          returnValue: <_i3.UserInfo>[]) as List<_i3.UserInfo>);
  @override
  String get uid =>
      (super.noSuchMethod(Invocation.getter(#uid), returnValue: '') as String);
  @override
  _i5.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<String> getIdToken([bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdToken, [forceRefresh]),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<_i3.IdTokenResult> getIdTokenResult(
          [bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdTokenResult, [forceRefresh]),
              returnValue:
                  Future<_i3.IdTokenResult>.value(_FakeIdTokenResult_2()))
          as _i5.Future<_i3.IdTokenResult>);
  @override
  _i5.Future<_i3.UserCredential> linkWithCredential(
          _i3.AuthCredential? credential) =>
      (super.noSuchMethod(Invocation.method(#linkWithCredential, [credential]),
              returnValue:
                  Future<_i3.UserCredential>.value(_FakeUserCredential_3()))
          as _i5.Future<_i3.UserCredential>);
  @override
  _i5.Future<_i3.UserCredential> linkWithPopup(_i8.AuthProvider? provider) =>
      (super.noSuchMethod(Invocation.method(#linkWithPopup, [provider]),
              returnValue:
                  Future<_i3.UserCredential>.value(_FakeUserCredential_3()))
          as _i5.Future<_i3.UserCredential>);
  @override
  _i5.Future<_i3.ConfirmationResult> linkWithPhoneNumber(String? phoneNumber,
          [_i3.RecaptchaVerifier? verifier]) =>
      (super.noSuchMethod(
              Invocation.method(#linkWithPhoneNumber, [phoneNumber, verifier]),
              returnValue: Future<_i3.ConfirmationResult>.value(
                  _FakeConfirmationResult_4()))
          as _i5.Future<_i3.ConfirmationResult>);
  @override
  _i5.Future<_i3.UserCredential> reauthenticateWithCredential(
          _i3.AuthCredential? credential) =>
      (super.noSuchMethod(
              Invocation.method(#reauthenticateWithCredential, [credential]),
              returnValue:
                  Future<_i3.UserCredential>.value(_FakeUserCredential_3()))
          as _i5.Future<_i3.UserCredential>);
  @override
  _i5.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> sendEmailVerification(
          [_i3.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
          Invocation.method(#sendEmailVerification, [actionCodeSettings]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<_i3.User> unlink(String? providerId) =>
      (super.noSuchMethod(Invocation.method(#unlink, [providerId]),
              returnValue: Future<_i3.User>.value(_FakeUser_5()))
          as _i5.Future<_i3.User>);
  @override
  _i5.Future<void> updateEmail(String? newEmail) =>
      (super.noSuchMethod(Invocation.method(#updateEmail, [newEmail]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> updatePassword(String? newPassword) =>
      (super.noSuchMethod(Invocation.method(#updatePassword, [newPassword]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> updatePhoneNumber(
          _i3.PhoneAuthCredential? phoneCredential) =>
      (super.noSuchMethod(
          Invocation.method(#updatePhoneNumber, [phoneCredential]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> updateDisplayName(String? displayName) =>
      (super.noSuchMethod(Invocation.method(#updateDisplayName, [displayName]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> updatePhotoURL(String? photoURL) =>
      (super.noSuchMethod(Invocation.method(#updatePhotoURL, [photoURL]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> updateProfile({String? displayName, String? photoURL}) =>
      (super.noSuchMethod(
          Invocation.method(#updateProfile, [],
              {#displayName: displayName, #photoURL: photoURL}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> verifyBeforeUpdateEmail(String? newEmail,
          [_i3.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
          Invocation.method(
              #verifyBeforeUpdateEmail, [newEmail, actionCodeSettings]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [IdTokenResult].
///
/// See the documentation for Mockito's code generation for more information.
class MockIdTokenResult extends _i1.Mock implements _i3.IdTokenResult {
  MockIdTokenResult() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String toString() => super.toString();
}
