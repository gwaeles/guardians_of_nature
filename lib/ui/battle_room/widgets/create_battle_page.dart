import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/battle/blocs/user_battles_bloc.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:guardians_of_nature/data/characters/states/characters_state.dart';
import 'package:guardians_of_nature/data/user/blocs/auth_bloc.dart';
import 'package:guardians_of_nature/data/user/states/auth_state.dart';
import 'package:provider/provider.dart';

import 'battle_details_column.dart';

class CreateBattlePage extends StatelessWidget {
  final Battle? lastBattle;

  const CreateBattlePage({
    Key? key,
    this.lastBattle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (lastBattle != null)
          BattleDetailsColumn(
            battle: lastBattle!,
          ),
        if (lastBattle == null)
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'battle_no_battle_title'.tr(),
                    style: const TextStyle(fontSize: 26),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'battle_no_battle_subtitle'.tr(),
                  ),
                ],
              ),
            ),
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
                    context.read<UserBattlesBloc>().add(
                          battle: Battle(
                            playerOneId: userId,
                            characterOne: character,
                            characterOneHealth: character.health,
                            time: DateTime.now(),
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
                child: Text('battle_create_battle'.tr()),
              );
            },
          ),
        ),
      ],
    );
  }
}
