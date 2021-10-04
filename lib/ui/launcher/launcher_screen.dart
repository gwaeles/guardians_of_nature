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
class LauncherScreen extends StatefulWidget {
  const LauncherScreen({Key? key}) : super(key: key);

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();

    // Sign in silently here to ensure the listener in the BlocConsumer
    // will be throwed
    context.read<AuthBloc>().signInSilently();
  }

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
              Navigator.pushReplacementNamed(context, '/home');
            }
          },
          builder: (context, state) {
            if (state is AuthStateNotAuthenticated) {
              return _SignInBody(
                onSignInRequest: () => _onSignInRequest(context),
              );
            } else {
              return const _LoaderBody();
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

class _LoaderBody extends StatelessWidget {
  const _LoaderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _SignInBody extends StatelessWidget {
  final Function onSignInRequest;

  const _SignInBody({
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
