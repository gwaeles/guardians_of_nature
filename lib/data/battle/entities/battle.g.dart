// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Battle _$$_BattleFromJson(Map<String, dynamic> json) => _$_Battle(
      playerOneId: json['playerOneId'] as String,
      characterOne:
          Character.fromJson(json['characterOne'] as Map<String, dynamic>),
      playerTwoId: json['playerTwoId'] as String?,
      characterTwo: json['characterTwo'] == null
          ? null
          : Character.fromJson(json['characterTwo'] as Map<String, dynamic>),
      reference: json['reference'] as String?,
      battleStatus:
          _$enumDecodeNullable(_$BattleStatusEnumMap, json['battleStatus']) ??
              BattleStatus.idle,
      characterOneHealth: json['characterOneHealth'] as int? ?? 0,
      characterTwoHealth: json['characterTwoHealth'] as int? ?? 0,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => BattleAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BattleToJson(_$_Battle instance) => <String, dynamic>{
      'playerOneId': instance.playerOneId,
      'characterOne': instance.characterOne.toJson(),
      'playerTwoId': instance.playerTwoId,
      'characterTwo': instance.characterTwo?.toJson(),
      'reference': instance.reference,
      'battleStatus': _$BattleStatusEnumMap[instance.battleStatus],
      'characterOneHealth': instance.characterOneHealth,
      'characterTwoHealth': instance.characterTwoHealth,
      'time': instance.time?.toIso8601String(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$BattleStatusEnumMap = {
  BattleStatus.idle: 'idle',
  BattleStatus.started: 'started',
  BattleStatus.ended: 'ended',
};

_$_BattleAction _$$_BattleActionFromJson(Map<String, dynamic> json) =>
    _$_BattleAction(
      reference: json['reference'] as String?,
      player: json['player'] as int? ?? 1,
      attack: json['attack'] as int? ?? 0,
      healthImpact: json['healthImpact'] as int? ?? 10,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_BattleActionToJson(_$_BattleAction instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'player': instance.player,
      'attack': instance.attack,
      'healthImpact': instance.healthImpact,
      'time': instance.time?.toIso8601String(),
    };
