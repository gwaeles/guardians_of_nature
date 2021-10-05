import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/characters/providers/character_skills_notifier.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:guardians_of_nature/data/characters/use_cases/skill_point_use_case.dart';
import 'package:provider/provider.dart';

///
/// Responsabilities :
/// * Implementation of objects (Notifier, Bloc, Service, ...)
/// * Provide them to the screen scope
///
class NewCharacterScreenProviders extends StatelessWidget {
  final Widget? child;

  const NewCharacterScreenProviders({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => CharactersBloc(
            repository: context.read(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => CharacterSkillsNotifier(
            useCase: SkillPointsUseCase(),
          ),
        )
      ],
      child: child,
    );
  }
}
