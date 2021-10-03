import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardians_of_nature/data/user/entities/auth_info.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.idle() = AuthStateIdle;
  factory AuthState.authenticating() = AuthStateAuthenticating;
  factory AuthState.authenticated({
    required AuthInfo authInfo,
  }) = AuthStateAuthenticated;
  factory AuthState.notAuthenticated() = AuthStateNotAuthenticated;
  factory AuthState.failure() = AuthStateFailure;
}
