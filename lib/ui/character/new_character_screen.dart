import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/providers/character_skills_notifier.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:guardians_of_nature/data/user/providers/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';
import 'package:guardians_of_nature/ui/widgets/app_scaffold.dart';
import 'package:provider/provider.dart';

import 'new_character_screen_providers.dart';

///
/// Responsabilities :
/// * Display a character datas
/// * Manage the points of the character
///
class NewCharacterScreen extends StatelessWidget {
  const NewCharacterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewCharacterScreenProviders(
      child: AppScaffold(
        appBar: AppBar(
          title: Text('character_screen_title'.tr()),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: const _BodyWidget(),
      ),
    );
  }

  ///
  /// --- EVENTS --- ///
  ///

}

///
/// --- WIDGETS --- ///
///

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<CharacterSkillsNotifier>(
          builder: (context, notifier, child) => Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                      onChanged: (value) =>
                          context.read<CharacterSkillsNotifier>().name = value,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Set the skills of your character',
              ),
              const SizedBox(
                height: 16,
              ),
              SkillRow(
                title: 'Skill points',
                points: notifier.skillPoints,
                editable: false,
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                height: 1,
                color: Colors.black26,
              ),
              const SizedBox(
                height: 16,
              ),
              SkillRow(
                title: 'Health',
                points: notifier.health,
                onDecrement: () => notifier.decrementHealth(),
                onIncrement: () => notifier.incrementHealth(),
              ),
              const SizedBox(
                height: 16,
              ),
              SkillRow(
                title: 'Attack',
                points: notifier.attack,
                onDecrement: () => notifier.decrementAttack(),
                onIncrement: () => notifier.incrementAttack(),
              ),
              const SizedBox(
                height: 16,
              ),
              SkillRow(
                title: 'Defence',
                points: notifier.defense,
                onDecrement: () => notifier.decrementDefense(),
                onIncrement: () => notifier.incrementDefense(),
              ),
              const SizedBox(
                height: 16,
              ),
              SkillRow(
                title: 'Magik',
                points: notifier.magik,
                onDecrement: () => notifier.decrementMagik(),
                onIncrement: () => notifier.incrementMagik(),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text('Validate'),
                onPressed: () {
                  final authState = context.read<AuthBloc>().state;
                  final userId = (authState is AuthStateAuthenticated)
                      ? authState.authInfo.userId
                      : null;
                  if (userId != null) {
                    final bloc = context.read<CharactersBloc>();
                    bloc
                        .add(
                          character: Character(
                            userId: userId,
                            nickname: notifier.name,
                            skillPoints: notifier.skillPoints,
                            health: notifier.health,
                            attack: notifier.attack,
                            defense: notifier.defense,
                            magik: notifier.magik,
                          ),
                        )
                        .then((value) => Navigator.of(context).pop())
                        .catchError(
                          (error) => log("Failed to add user: $error"),
                        );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SkillRow extends StatelessWidget {
  final String title;
  final int points;
  final bool editable;
  final Function? onIncrement;
  final Function? onDecrement;

  const SkillRow({
    Key? key,
    required this.title,
    required this.points,
    this.editable = true,
    this.onIncrement,
    this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: editable ? FontWeight.normal : FontWeight.bold,
            ),
          ),
        ),
        if (editable)
          GestureDetector(
            onTap: () => onDecrement?.call(),
            child: const SizedBox(
              width: 40,
              height: 40,
              child: Icon(
                Icons.remove,
                size: 28,
                color: Colors.orange,
              ),
            ),
          ),
        SizedBox(
          width: 70,
          child: Center(
            child: Text(
              '$points',
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        if (editable)
          GestureDetector(
            onTap: () => onIncrement?.call(),
            child: const SizedBox(
              width: 40,
              height: 40,
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.green,
              ),
            ),
          ),
        if (!editable)
          const SizedBox(
            width: 40,
            height: 40,
          ),
      ],
    );
  }
}
