import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/battle/blocs/idle_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/blocs/user_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/use_cases/attack_use_case.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:provider/provider.dart';

///
/// Responsabilities :
/// * Implementation of objects (Notifier, Bloc, Service, ...)
/// * Provide them to the screen scope
///
class BattleRoomProviders extends StatelessWidget {
  final Widget child;

  const BattleRoomProviders({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => AttackUseCase(
            battlesRepository: context.read(),
            charactersRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => UserBattlesBloc(
            repository: context.read(),
            attackUseCase: context.read(),
          )..init(),
        ),
        BlocProvider(
          create: (context) => IdleBattlesBloc(
            repository: context.read(),
          )..init(),
        ),
        BlocProvider(
          create: (context) => CharactersBloc(
            repository: context.read(),
          )..init(),
        ),
      ],
      child: child,
    );
  }
}
