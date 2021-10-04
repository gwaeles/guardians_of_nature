// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      userId: json['userId'] as String,
      nickname: json['nickname'] as String,
      reference: json['reference'] as String?,
      rank: json['rank'] as int? ?? 1,
      skillPoints: json['skillPoints'] as int? ?? 12,
      health: json['health'] as int? ?? 10,
      attack: json['attack'] as int? ?? 0,
      defense: json['defense'] as int? ?? 0,
      magik: json['magik'] as int? ?? 0,
      lastBattle: json['lastBattle'] == null
          ? null
          : DateTime.parse(json['lastBattle'] as String),
      lastBattleWon: json['lastBattleWon'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'reference': instance.reference,
      'rank': instance.rank,
      'skillPoints': instance.skillPoints,
      'health': instance.health,
      'attack': instance.attack,
      'defense': instance.defense,
      'magik': instance.magik,
      'lastBattle': instance.lastBattle?.toIso8601String(),
      'lastBattleWon': instance.lastBattleWon,
    };
