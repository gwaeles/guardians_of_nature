import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';

part 'user_battles_state.freezed.dart';

@freezed
class UserBattlesState with _$UserBattlesState {
  factory UserBattlesState.idle() = UserBattlesIdle;
  factory UserBattlesState.error() = UserBattlesError;

  factory UserBattlesState.loaded({
    required List<Battle> battles,
  }) = UserBattlesLoaded;
}
