import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guardians_of_nature/data/user/entities/auth_info.dart';
import 'package:guardians_of_nature/data/user/providers/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/sources/google_sign_in_service.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([
  FlutterSecureStorage,
  GoogleSignIn,
  GoogleSignInAccount,
  GoogleSignInService,
  firebase.User,
  firebase.IdTokenResult,
])
void main() {
  late AuthBloc bloc;
  late MockFlutterSecureStorage storage;
  late MockGoogleSignIn googleSignIn;
  late MockGoogleSignInAccount googleSignInAccount;
  late MockGoogleSignInService googleSignInService;

  setUp(() async {
    // Mocks
    storage = MockFlutterSecureStorage();
    googleSignIn = MockGoogleSignIn();
    googleSignInAccount = MockGoogleSignInAccount();
    googleSignInService = MockGoogleSignInService();

    bloc = AuthBloc(
      googleSignIn: googleSignIn,
      googleSignInService: googleSignInService,
      storage: storage,
    );
  });

  tearDown(() async {
    bloc.close();
  });

  blocTest<AuthBloc, AuthState>(
    'should initial state be AuthState.idle',
    build: () => bloc,
    verify: (AuthBloc cubit) {
      expect(cubit.state, AuthState.idle());
    },
  );

  blocTest<AuthBloc, AuthState>(
    'User is not authenticated',
    build: () => bloc,
    setUp: () {
      when(storage.read(key: anyNamed('key')))
          .thenAnswer((_) => Future.value(null));
      when(storage.delete(key: anyNamed('key')))
          .thenAnswer((_) => Future.value());
      when(googleSignIn.signInSilently()).thenAnswer((_) => Future.value(null));
    },
    act: (bloc) => bloc.signInSilently(),
    expect: () => [
      AuthState.authenticating(),
      AuthState.failure(),
    ],
  );

  late AuthInfo storedAuthInfo;

  blocTest<AuthBloc, AuthState>(
    'Auth silently with valid stored infos',
    build: () => bloc,
    setUp: () {
      // GIVEN
      storedAuthInfo = AuthInfo(
        userId: 'uid',
        userName: 'John Doe',
        userEmail: 'john.doe@gmail.com',
        idToken: 'token',
        expirationTime: DateTime.now().add(
          const Duration(hours: 1),
        ),
      );

      String serializedAuthInfo = jsonEncode(storedAuthInfo.toJson());

      when(storage.read(key: anyNamed('key')))
          .thenAnswer((_) => Future.value(serializedAuthInfo));
    },
    act: (bloc) => bloc.signInSilently(),
    expect: () => [
      AuthState.authenticating(),
      AuthState.authenticated(authInfo: storedAuthInfo),
    ],
  );

  late AuthInfo authInfo;

  blocTest<AuthBloc, AuthState>(
    'Auth silently',
    build: () => bloc,
    setUp: () {
      // GIVEN
      final expirationTime = DateTime.now().add(
        const Duration(hours: 1),
      );
      authInfo = AuthInfo(
        userId: 'uid',
        userName: 'John Doe',
        userEmail: 'john.doe@gmail.com',
        idToken: 'token',
        expirationTime: expirationTime,
      );

      final firebaseUser = MockUser();
      final idTokenResult = MockIdTokenResult();

      when(storage.read(key: anyNamed('key')))
          .thenAnswer((_) => Future.value(null));
      when(storage.delete(key: anyNamed('key')))
          .thenAnswer((_) => Future.value());
      when(googleSignIn.signInSilently())
          .thenAnswer((_) => Future.value(googleSignInAccount));
      when(googleSignInService.signInWithGoogleAccount(any))
          .thenAnswer((_) => Future.value(firebaseUser));
      when(firebaseUser.getIdTokenResult())
          .thenAnswer((_) => Future.value(idTokenResult));
      when(firebaseUser.uid).thenReturn('uid');
      when(firebaseUser.displayName).thenReturn('John Doe');
      when(firebaseUser.email).thenReturn('john.doe@gmail.com');
      when(idTokenResult.token).thenReturn('token');
      when(idTokenResult.expirationTime).thenReturn(expirationTime);
    },
    act: (bloc) => bloc.signInSilently(),
    expect: () => [
      AuthState.authenticating(),
      AuthState.authenticated(authInfo: authInfo),
    ],
  );
}
