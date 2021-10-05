import 'package:flutter/material.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';

import 'battle_action_list_item.dart';

class BattleDetailsColumn extends StatelessWidget {
  final Battle battle;

  const BattleDetailsColumn({
    Key? key,
    required this.battle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: _CharacterBadge(
                character: battle.characterOne,
                health: battle.characterOneHealth,
              ),
            ),
            const Text(
              'VS',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Expanded(
              child: _CharacterBadge(
                character: battle.characterTwo!,
                health: battle.characterTwoHealth,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          height: 1,
          color: Colors.black26,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            battle.battleStatus == BattleStatus.ended ? 'Ended' : '',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 72),
            itemCount: battle.actions?.length ?? 0,
            itemBuilder: (context, index) {
              return BattleActionListItem(
                action: battle.actions!.elementAt(index),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CharacterBadge extends StatelessWidget {
  final Character character;
  final int health;

  const _CharacterBadge({
    Key? key,
    required this.character,
    required this.health,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          character.nickname,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'A${character.attack} - ',
              style: const TextStyle(
                color: Colors.orange,
                fontSize: 18,
              ),
            ),
            Text(
              'D${character.defense} - ',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            Text(
              'M${character.magik}',
              style: const TextStyle(
                color: Colors.green,
                fontSize: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '$health',
          style: const TextStyle(
            fontSize: 30,
          ),
        )
      ],
    );
  }
}
