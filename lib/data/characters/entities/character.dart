import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String userId,
    required String nickname,
    String? reference,
    @Default(1) int rank,
    @Default(12) int skillPoints,
    @Default(10) int health,
    @Default(0) int attack,
    @Default(0) int defense,
    @Default(0) int magik,
    DateTime? lastBattle,
    @Default(true) bool lastBattleWon,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
