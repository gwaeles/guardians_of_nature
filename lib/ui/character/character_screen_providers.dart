import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/characters/providers/character_bloc.dart';
import 'package:guardians_of_nature/data/characters/providers/character_skills_notifier.dart';
import 'package:guardians_of_nature/data/characters/states/character_state.dart';
import 'package:guardians_of_nature/data/characters/use_cases/skill_point_use_case.dart';
import 'package:provider/provider.dart';

///
/// Responsabilities :
/// * Implementation of objects (Notifier, Bloc, Service, ...)
/// * Provide them to the screen scope
///
class CharacterScreenProviders extends StatelessWidget {
  final Widget? child;
  final String characterReference;

  const CharacterScreenProviders({
    Key? key,
    this.child,
    required this.characterReference,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => CharacterBloc(
            repository: context.read(),
            characterReference: characterReference,
          )..init(),
        ),
        ChangeNotifierProvider(
          create: (context) {
            // Need to be created when CharacterBloc is loaded
            final CharacterBloc bloc = context.read();
            late SkillPointsUseCase usecase;
            if (bloc.state is CharacterLoaded) {
              final character = (bloc.state as CharacterLoaded).character;
              usecase = SkillPointsUseCase(
                skillPoints: character.skillPoints,
                initialHealth: character.health,
                initialAttack: character.attack,
                initialDefense: character.defense,
                initialMagik: character.magik,
              );
            } else {
              usecase = SkillPointsUseCase();
            }

            return CharacterSkillsNotifier(
              useCase: usecase,
            );
          },
        ),
      ],
      child: child,
    );
  }
}
