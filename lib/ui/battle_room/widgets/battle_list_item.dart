import 'package:flutter/material.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';

class BattleListItem extends StatelessWidget {
  final Battle battle;

  const BattleListItem({
    Key? key,
    required this.battle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              battle.characterOne.nickname,
            ),
          ),
          SizedBox(
            width: 40,
            child: Center(
              child: Text(
                '${battle.characterOne.rank}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
