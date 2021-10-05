import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:provider/provider.dart';

///
/// Responsabilities :
/// * Implementation of objects (Notifier, Bloc, Service, ...)
/// * Provide them to the screen scope
///
class HomeScreenProviders extends StatelessWidget {
  final Widget? child;

  const HomeScreenProviders({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharactersBloc(
        repository: context.read(),
      )..init(),
      child: child,
    );
  }
}
