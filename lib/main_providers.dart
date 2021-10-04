import 'package:cloud_firestore/cloud_firestore.dart' as fb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/repositories/characters_repository.dart';
import 'package:guardians_of_nature/data/user/providers/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/sources/google_sign_in_service.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';
import 'package:provider/provider.dart';

///
/// Responsabilities :
/// * Implementation of global objects (Notifier, Bloc, Service, ...)
/// * Provide them to the app scope
///
class MainProviders extends StatelessWidget {
  final Widget? child;

  const MainProviders({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => const FlutterSecureStorage(),
        ),
        Provider(
          create: (context) => GoogleSignIn(
            scopes: <String>[
              'email',
              'https://www.googleapis.com/auth/contacts.readonly',
            ],
          ),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            storage: context.read(),
            googleSignIn: context.read(),
            googleSignInService: GoogleSignInService(),
          ),
        ),
        RepositoryProvider(
          create: (context) {
            final authState = context.read<AuthBloc>().state;
            final userId = (authState is AuthStateAuthenticated)
                ? authState.authInfo.userId
                : null;

            final charactersRef = fb.FirebaseFirestore.instance
                .collection('characters')
                .withConverter<Character>(
                  fromFirestore: (snapshots, _) =>
                      Character.fromJson(snapshots.data()!),
                  toFirestore: (user, _) => user.toJson(),
                );

            return CharactersRepository(
              charactersRef: charactersRef,
            )..userId = userId;
          },
        ),
      ],
      builder: (context, child) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            // Listen the AuthState to update the repositories
            final userId = (state is AuthStateAuthenticated)
                ? state.authInfo.userId
                : null;

            context.read<CharactersRepository>().userId = userId;
          },
          child: child!,
        );
      },
      child: child,
    );
  }
}
