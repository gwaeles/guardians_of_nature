import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';

part 'battle.freezed.dart';
part 'battle.g.dart';

enum BattleStatus {
  idle,
  started,
  ended,
}

@freezed
class Battle with _$Battle {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Battle({
    required String playerOneId,
    required Character characterOne,
    String? playerTwoId,
    Character? characterTwo,
    String? reference,
    @Default(BattleStatus.idle) BattleStatus battleStatus,
    @Default(0) int characterOneHealth,
    @Default(0) int characterTwoHealth,
    DateTime? time,
    List<BattleAction>? actions,
  }) = _Battle;

  factory Battle.fromJson(Map<String, dynamic> json) => _$BattleFromJson(json);
}

@freezed
class BattleAction with _$BattleAction {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory BattleAction({
    String? reference,
    @Default(1) int player,
    @Default(0) int attack,
    @Default(10) int healthImpact,
    DateTime? time,
  }) = _BattleAction;

  factory BattleAction.fromJson(Map<String, dynamic> json) =>
      _$BattleActionFromJson(json);
}
