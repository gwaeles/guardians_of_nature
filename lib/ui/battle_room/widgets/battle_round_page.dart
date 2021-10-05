import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:guardians_of_nature/data/battle/blocs/user_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/user/blocs/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';
import 'package:provider/provider.dart';

import 'battle_details_column.dart';

class BattleRoundPage extends StatelessWidget {
  final Battle battle;

  const BattleRoundPage({
    Key? key,
    required this.battle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;
    final userId = (authState is AuthStateAuthenticated)
        ? authState.authInfo.userId
        : null;
    final isPlayerOne = userId == battle.playerOneId;
    final actionCount = battle.actions?.length ?? 0;
    final canPlay = isPlayerOne && (actionCount % 2) == 0 ||
        !isPlayerOne && (actionCount % 2) == 1;

    return Stack(
      children: [
        BattleDetailsColumn(
          battle: battle,
        ),
        if (canPlay)
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () => context.read<UserBattlesBloc>().attack(
                    isPlayerOne: isPlayerOne,
                    battle: battle,
                  ),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(240, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Text('battle_attack'.tr()),
            ),
          )
      ],
    );
  }
}
