import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/battle/blocs/idle_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/blocs/user_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/battle/states/idle_battles_state.dart';
import 'package:guardians_of_nature/data/battle/states/user_battles_state.dart';
import 'package:guardians_of_nature/ui/widgets/app_scaffold.dart';

import 'battle_room_providers.dart';
import 'widgets/battle_round_page.dart';
import 'widgets/battle_waiting_page.dart';
import 'widgets/create_battle_page.dart';
import 'widgets/join_battle_page.dart';

///
/// Responsabilities :
/// * Manage the battle lifecycle
///
class BattleRoomScreen extends StatelessWidget {
  const BattleRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BattleRoomProviders(
      child: AppScaffold(
        appBar: AppBar(
          title: Text('battle_screen_title'.tr()),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: const _UserBattlesBuilder(),
      ),
    );
  }
}

///
/// --- WIDGETS --- ///
///

class _UserBattlesBuilder extends StatelessWidget {
  const _UserBattlesBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBattlesBloc, UserBattlesState>(
      builder: (context, userBattlesState) {
        if (userBattlesState is UserBattlesError) {
          return const Center(
            child: Text('error'),
          );
        }

        if (userBattlesState is UserBattlesIdle) {
          return const Center(child: CircularProgressIndicator());
        }

        final battles = (userBattlesState as UserBattlesLoaded).battles;
        final activeBattles = battles
            .where((element) => element.battleStatus != BattleStatus.ended);
        final pastBattles = battles
            .where((element) => element.battleStatus == BattleStatus.ended);

        if (activeBattles.isEmpty) {
          // No active battle => watch the idle battles
          return _ActiveBattlesBuilder(lastBattle: pastBattles.first);
        }

        final activeBattle = activeBattles.first;

        // Waiting for player
        if (activeBattle.battleStatus == BattleStatus.idle) {
          return const BattleWaitingPage();
        }

        // Fighting in progress
        return BattleRoundPage(
          battle: activeBattle,
        );
      },
    );
  }
}

class _ActiveBattlesBuilder extends StatelessWidget {
  final Battle? lastBattle;

  const _ActiveBattlesBuilder({
    Key? key,
    this.lastBattle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdleBattlesBloc, IdleBattlesState>(
      builder: (context, idleBattlesState) {
        if (idleBattlesState is IdleBattlesError) {
          return const Center(
            child: Text('error'),
          );
        }

        if (idleBattlesState is IdleBattlesIdle) {
          return const Center(child: CircularProgressIndicator());
        }

        final data = (idleBattlesState as IdleBattlesLoaded).battles;

        if (data.isEmpty) {
          // No active battle
          return CreateBattlePage(
            lastBattle: lastBattle,
          );
        }

        // Active battle found
        return JoinBattlePage(
          battle: data.first,
        );
      },
    );
  }
}
