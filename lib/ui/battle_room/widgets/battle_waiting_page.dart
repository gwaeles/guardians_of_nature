import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BattleWaitingPage extends StatelessWidget {
  const BattleWaitingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('battle_waiting_for_player'.tr()),
          const SizedBox(
            height: 56,
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
