import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/user/blocs/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';

///
/// Responsabilities :
/// * Checking of auth status
/// * Redirect to the launcher screen if the user is disconnected
///
class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;

  const AppScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: BlocConsumer<AuthBloc, AuthState>(
        buildWhen: (previous, current) => false,
        listener: (context, state) {
          if (state is! AuthStateAuthenticated) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/launcher',
              ModalRoute.withName('/launcher'),
            );
          }
        },
        builder: (context, state) {
          return body;
        },
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
