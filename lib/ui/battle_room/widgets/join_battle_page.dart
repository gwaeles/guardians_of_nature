import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/battle/blocs/idle_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:guardians_of_nature/data/characters/states/characters_state.dart';
import 'package:guardians_of_nature/data/user/blocs/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';
import 'package:provider/provider.dart';

import 'battle_list_item.dart';

class JoinBattlePage extends StatelessWidget {
  final Battle battle;

  const JoinBattlePage({
    Key? key,
    required this.battle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 40,
                    child: Center(
                      child: Text(
                        'character_rank'.tr(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BattleListItem(
              battle: battle,
            ),
          ],
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              if (state is! CharactersLoaded) {
                return Container();
              }

              return ElevatedButton(
                onPressed: () {
                  final authState = context.read<AuthBloc>().state;
                  final userId = (authState is AuthStateAuthenticated)
                      ? authState.authInfo.userId
                      : null;
                  final character = context.read<CharactersBloc>().randomGet();
                  if (userId != null && character != null) {
                    context.read<IdleBattlesBloc>().update(
                          battle: battle.copyWith(
                            playerTwoId: userId,
                            characterTwo: character,
                            characterTwoHealth: character.health,
                            battleStatus: BattleStatus.started,
                          ),
                        );
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(240, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text('Join a battle'),
              );
            },
          ),
        ),
      ],
    );
  }
}
