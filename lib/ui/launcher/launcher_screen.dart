import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:guardians_of_nature/data/user/providers/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';

///
/// Responsabilities :
/// * Checking of auth status
/// * Redirect to Home screen if user is authenticated
/// * Display the Sign In form if not
///
class LauncherScreen extends StatelessWidget {
  const LauncherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // Fixing the status bar icon color
        statusBarIconBrightness:
            Theme.of(context).brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthStateAuthenticated) {
              Navigator.pushNamed(context, '/home');
            }
          },
          builder: (context, state) {
            if (state is AuthStateNotAuthenticated) {
              return SignInBody(
                onSignInRequest: () => _onSignInRequest(context),
              );
            } else {
              return const LoaderBody();
            }
          },
        ),
      ),
    );
  }

  ///
  /// --- EVENTS --- ///
  ///

  void _onSignInRequest(
    BuildContext context,
  ) {
    context.read<AuthBloc>().signIn();
  }
}

///
/// --- WIDGETS --- ///
///

class LoaderBody extends StatelessWidget {
  const LoaderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class SignInBody extends StatelessWidget {
  final Function onSignInRequest;

  const SignInBody({
    Key? key,
    required this.onSignInRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'sign_in_title'.tr(),
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'sign_in_subtitle'.tr(),
            ),
            const SizedBox(
              height: 48,
            ),
            SignInButton(
              Buttons.Google,
              text: 'sign_in_button_label_google'.tr(),
              onPressed: onSignInRequest,
            ),
          ],
        ),
      ),
    );
  }
}
