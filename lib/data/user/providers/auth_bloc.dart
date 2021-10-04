import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guardians_of_nature/data/user/entities/auth_info.dart';
import 'package:guardians_of_nature/data/user/sources/google_sign_in_service.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  final FlutterSecureStorage storage;
  final GoogleSignIn googleSignIn;
  final GoogleSignInService googleSignInService;

  AuthBloc({
    required this.googleSignIn,
    required this.googleSignInService,
    required this.storage,
  }) : super(AuthState.idle());

  void idle() {
    emit(
      AuthState.idle(),
    );
  }

  Future<void> signInSilently() async {
    await _signIn(silently: true);
  }

  Future<void> signIn() async {
    await _signIn(silently: false);
  }

  Future<void> signOut() async {
    await storage.delete(key: 'firebaseAuthInfo');

    googleSignIn.signOut();

    emit(AuthState.notAuthenticated());
  }

  ///
  /// --- Internal --- ///
  ///

  Future<void> _signIn({
    required bool silently,
  }) async {
    if (state is AuthStateAuthenticating) {
      return;
    }

    // Inform that we are proceeding with the authentication
    emit(AuthState.authenticating());

    final firebaseAuthInfo = await storage.read(key: 'firebaseAuthInfo');
    if (firebaseAuthInfo != null) {
      log('[AUTH] Already signed in, checking validity...');

      try {
        AuthInfo authInfo = AuthInfo.fromJson(
          jsonDecode(firebaseAuthInfo),
        );

        if (authInfo.expirationTime != null) {
          if (authInfo.expirationTime!.isAfter(DateTime.now())) {
            log('[AUTH] Auth infos are valid.');

            emit(AuthState.authenticated(
              authInfo: authInfo,
            ));

            return;
          } else {
            log('[AUTH] Auth infos are expired.');
          }
        }
      } catch (e) {
        log(
          'Error on parsing stored auth infos',
          error: e,
        );
      }
    }

    await storage.delete(key: 'firebaseAuthInfo');
    log('[AUTH] Google Firebase signing in ${silently ? 'silently' : ''}...');
    final account = await (silently
        ? googleSignIn.signInSilently()
        : googleSignIn.signIn());
    final firebaseUser = account == null
        ? null
        : await googleSignInService.signInWithGoogleAccount(account);

    log('[AUTH] Firebase user authenticated as ${firebaseUser?.displayName} (${firebaseUser?.email})');
    log('[AUTH] Getting new idToken...');

    final idTokenResult = await firebaseUser?.getIdTokenResult();

    if (firebaseUser != null && idTokenResult != null) {
      log('[AUTH] New token received, storing infos...');

      AuthInfo authInfo = AuthInfo(
        userId: firebaseUser.uid,
        userName: firebaseUser.displayName,
        userEmail: firebaseUser.email,
        idToken: idTokenResult.token,
        expirationTime: idTokenResult.expirationTime,
      );

      await storage.write(
        key: 'firebaseAuthInfo',
        value: jsonEncode(
          authInfo.toJson(),
        ),
      );

      log('[AUTH] Authenticated');

      // Inform that we have successfuly authenticated, or not
      emit(
        AuthState.authenticated(
          authInfo: authInfo,
        ),
      );
    } else {
      emit(AuthState.notAuthenticated());
    }
  }
}
