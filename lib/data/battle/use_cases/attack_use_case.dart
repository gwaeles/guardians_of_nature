import 'dart:math';

import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/battle/repositories/battles_repository.dart';
import 'package:guardians_of_nature/data/characters/repositories/characters_repository.dart';

class AttackUseCase {
  final BattlesRepository battlesRepository;
  final CharactersRepository charactersRepository;

  AttackUseCase({
    required this.battlesRepository,
    required this.charactersRepository,
  });

  void attack({
    required bool isPlayerOne,
    required Battle battle,
  }) {
    final action = _createAttack(
      isPlayerOne: isPlayerOne,
      battle: battle,
    );
    final List<BattleAction> actions = battle.actions ?? [];
    actions.add(
      action,
    );

    final characterOneHealth = isPlayerOne
        ? battle.characterOneHealth
        : battle.characterOneHealth - action.healthImpact;
    final characterTwoHealth = isPlayerOne
        ? battle.characterTwoHealth - action.healthImpact
        : battle.characterTwoHealth;
    final battleStatus = characterOneHealth <= 0 || characterTwoHealth <= 0
        ? BattleStatus.ended
        : BattleStatus.started;

    battlesRepository.update(
      battle: battle.copyWith(
        actions: actions,
        characterOneHealth: characterOneHealth,
        characterTwoHealth: characterTwoHealth,
        battleStatus: battleStatus,
      ),
    );

    if (battleStatus == BattleStatus.ended) {
      charactersRepository.update(
        character: battle.characterOne.copyWith(
          lastBattle: DateTime.now(),
          lastBattleWon: characterOneHealth > 0,
          rank: characterOneHealth > 0
              ? battle.characterOne.rank + 1
              : max(1, battle.characterOne.rank - 1),
          skillPoints: characterOneHealth > 0
              ? battle.characterOne.skillPoints + 1
              : battle.characterOne.skillPoints,
        ),
      );
      if (battle.characterTwo != null) {
        charactersRepository.update(
          character: battle.characterTwo!.copyWith(
            lastBattle: DateTime.now(),
            lastBattleWon: characterTwoHealth > 0,
            rank: characterTwoHealth > 0
                ? battle.characterTwo!.rank + 1
                : max(1, battle.characterTwo!.rank - 1),
            skillPoints: characterTwoHealth > 0
                ? battle.characterTwo!.skillPoints + 1
                : battle.characterTwo!.skillPoints,
          ),
        );
      }
    }
  }

  BattleAction _createAttack({
    required bool isPlayerOne,
    required Battle battle,
  }) {
    if (isPlayerOne) {
      return _createAttackForPlayerOne(
        battle: battle,
      );
    } else {
      return _createAttackForPlayerTwo(
        battle: battle,
      );
    }
  }

  BattleAction _createAttackForPlayerOne({
    required Battle battle,
  }) {
    final attack = battle.characterOne.attack;
    final random = attack <= 1 ? 1 : Random().nextInt(attack - 1) + 1;
    final defense = battle.characterTwo?.defense ?? 0;
    final impact = max(0, random - defense);
    final healthImpact = impact == battle.characterOne.magik
        ? impact + battle.characterOne.magik
        : impact;

    return BattleAction(
      player: 1,
      attack: random,
      healthImpact: healthImpact,
      time: DateTime.now(),
    );
  }

  BattleAction _createAttackForPlayerTwo({
    required Battle battle,
  }) {
    final attack = battle.characterTwo?.attack ?? 0;
    final random = attack <= 1 ? 1 : Random().nextInt(attack - 1) + 1;
    final defense = battle.characterOne.defense;
    final impact = random - defense;
    final healthImpact = impact == battle.characterTwo?.magik
        ? impact + battle.characterTwo!.magik
        : impact;

    return BattleAction(
      player: 2,
      attack: random,
      healthImpact: healthImpact,
      time: DateTime.now(),
    );
  }
}
