import 'package:flutter/material.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';

class BattleActionListItem extends StatelessWidget {
  final BattleAction action;

  const BattleActionListItem({
    Key? key,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: action.player == 1
          ? _playerOneAttackListItem(action)
          : _playerTwoAttackListItem(action),
    );
  }

  Widget _playerOneAttackListItem(BattleAction action) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                '${action.attack}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          const Icon(Icons.arrow_forward),
          Expanded(
            child: Center(
              child: Text(
                '-${action.healthImpact}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      );

  Widget _playerTwoAttackListItem(BattleAction action) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                '-${action.healthImpact}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          const Icon(Icons.arrow_back),
          Expanded(
            child: Center(
              child: Text(
                '${action.attack}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      );
}
