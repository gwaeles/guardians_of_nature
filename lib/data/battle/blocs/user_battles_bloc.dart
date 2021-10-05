import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/battle/repositories/battles_repository.dart';
import 'package:guardians_of_nature/data/battle/states/user_battles_state.dart';
import 'package:guardians_of_nature/data/battle/use_cases/attack_use_case.dart';

class UserBattlesBloc extends Cubit<UserBattlesState> {
  final BattlesRepository repository;
  final AttackUseCase attackUseCase;

  UserBattlesBloc({
    required this.repository,
    required this.attackUseCase,
  }) : super(UserBattlesState.idle());

  StreamSubscription? _repoSubscription;

  ///
  /// --- SUBSCRIBTION --- ///
  ///

  void init() {
    // Repo stream subscription
    _repoSubscription?.cancel();
    _repoSubscription = repository.watchUserBattles().listen(_onData);
  }

  Future<DocumentReference<Battle>> add({
    required Battle battle,
  }) async {
    return repository.add(battle: battle);
  }

  void attack({
    required bool isPlayerOne,
    required Battle battle,
  }) {
    attackUseCase.attack(
      isPlayerOne: isPlayerOne,
      battle: battle,
    );
  }

  @override
  Future<void> close() {
    _repoSubscription?.cancel();
    _repoSubscription = null;
    return super.close();
  }

  void _onData(List<Battle> _data) {
    emit(
      UserBattlesState.loaded(
        battles: _data,
      ),
    );
  }
}
