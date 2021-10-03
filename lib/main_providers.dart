import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guardians_of_nature/data/user/providers/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/sources/google_sign_in_service.dart';
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
          )..signInSilently(),
        ),
      ],
      child: child,
    );
  }
}
