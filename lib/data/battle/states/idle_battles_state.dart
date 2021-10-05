import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';

part 'idle_battles_state.freezed.dart';

@freezed
class IdleBattlesState with _$IdleBattlesState {
  factory IdleBattlesState.idle() = IdleBattlesIdle;
  factory IdleBattlesState.error() = IdleBattlesError;

  factory IdleBattlesState.loaded({
    required List<Battle> battles,
  }) = IdleBattlesLoaded;
}
