import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/battle/repositories/battles_repository.dart';
import 'package:guardians_of_nature/data/battle/states/idle_battles_state.dart';

class IdleBattlesBloc extends Cubit<IdleBattlesState> {
  final BattlesRepository repository;

  IdleBattlesBloc({
    required this.repository,
  }) : super(IdleBattlesState.idle());

  StreamSubscription? _repoSubscription;

  ///
  /// --- SUBSCRIBTION --- ///
  ///

  void init() {
    // Repo stream subscription
    _repoSubscription?.cancel();
    _repoSubscription = repository.watchIdleBattles().listen(_onData);
  }

  Future<void> update({
    required Battle battle,
  }) async {
    return repository.update(battle: battle);
  }

  @override
  Future<void> close() {
    _repoSubscription?.cancel();
    _repoSubscription = null;
    return super.close();
  }

  void _onData(List<Battle> _data) {
    emit(
      IdleBattlesState.loaded(
        battles: _data,
      ),
    );
  }
}
