// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'battle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Battle _$BattleFromJson(Map<String, dynamic> json) {
  return _Battle.fromJson(json);
}

/// @nodoc
class _$BattleTearOff {
  const _$BattleTearOff();

  _Battle call(
      {required String playerOneId,
      required Character characterOne,
      String? playerTwoId,
      Character? characterTwo,
      String? reference,
      BattleStatus battleStatus = BattleStatus.idle,
      int characterOneHealth = 0,
      int characterTwoHealth = 0,
      DateTime? time,
      List<BattleAction>? actions}) {
    return _Battle(
      playerOneId: playerOneId,
      characterOne: characterOne,
      playerTwoId: playerTwoId,
      characterTwo: characterTwo,
      reference: reference,
      battleStatus: battleStatus,
      characterOneHealth: characterOneHealth,
      characterTwoHealth: characterTwoHealth,
      time: time,
      actions: actions,
    );
  }

  Battle fromJson(Map<String, Object> json) {
    return Battle.fromJson(json);
  }
}

/// @nodoc
const $Battle = _$BattleTearOff();

/// @nodoc
mixin _$Battle {
  String get playerOneId => throw _privateConstructorUsedError;
  Character get characterOne => throw _privateConstructorUsedError;
  String? get playerTwoId => throw _privateConstructorUsedError;
  Character? get characterTwo => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  BattleStatus get battleStatus => throw _privateConstructorUsedError;
  int get characterOneHealth => throw _privateConstructorUsedError;
  int get characterTwoHealth => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  List<BattleAction>? get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleCopyWith<Battle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleCopyWith<$Res> {
  factory $BattleCopyWith(Battle value, $Res Function(Battle) then) =
      _$BattleCopyWithImpl<$Res>;
  $Res call(
      {String playerOneId,
      Character characterOne,
      String? playerTwoId,
      Character? characterTwo,
      String? reference,
      BattleStatus battleStatus,
      int characterOneHealth,
      int characterTwoHealth,
      DateTime? time,
      List<BattleAction>? actions});

  $CharacterCopyWith<$Res> get characterOne;
  $CharacterCopyWith<$Res>? get characterTwo;
}

/// @nodoc
class _$BattleCopyWithImpl<$Res> implements $BattleCopyWith<$Res> {
  _$BattleCopyWithImpl(this._value, this._then);

  final Battle _value;
  // ignore: unused_field
  final $Res Function(Battle) _then;

  @override
  $Res call({
    Object? playerOneId = freezed,
    Object? characterOne = freezed,
    Object? playerTwoId = freezed,
    Object? characterTwo = freezed,
    Object? reference = freezed,
    Object? battleStatus = freezed,
    Object? characterOneHealth = freezed,
    Object? characterTwoHealth = freezed,
    Object? time = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      playerOneId: playerOneId == freezed
          ? _value.playerOneId
          : playerOneId // ignore: cast_nullable_to_non_nullable
              as String,
      characterOne: characterOne == freezed
          ? _value.characterOne
          : characterOne // ignore: cast_nullable_to_non_nullable
              as Character,
      playerTwoId: playerTwoId == freezed
          ? _value.playerTwoId
          : playerTwoId // ignore: cast_nullable_to_non_nullable
              as String?,
      characterTwo: characterTwo == freezed
          ? _value.characterTwo
          : characterTwo // ignore: cast_nullable_to_non_nullable
              as Character?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      battleStatus: battleStatus == freezed
          ? _value.battleStatus
          : battleStatus // ignore: cast_nullable_to_non_nullable
              as BattleStatus,
      characterOneHealth: characterOneHealth == freezed
          ? _value.characterOneHealth
          : characterOneHealth // ignore: cast_nullable_to_non_nullable
              as int,
      characterTwoHealth: characterTwoHealth == freezed
          ? _value.characterTwoHealth
          : characterTwoHealth // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<BattleAction>?,
    ));
  }

  @override
  $CharacterCopyWith<$Res> get characterOne {
    return $CharacterCopyWith<$Res>(_value.characterOne, (value) {
      return _then(_value.copyWith(characterOne: value));
    });
  }

  @override
  $CharacterCopyWith<$Res>? get characterTwo {
    if (_value.characterTwo == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.characterTwo!, (value) {
      return _then(_value.copyWith(characterTwo: value));
    });
  }
}

/// @nodoc
abstract class _$BattleCopyWith<$Res> implements $BattleCopyWith<$Res> {
  factory _$BattleCopyWith(_Battle value, $Res Function(_Battle) then) =
      __$BattleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String playerOneId,
      Character characterOne,
      String? playerTwoId,
      Character? characterTwo,
      String? reference,
      BattleStatus battleStatus,
      int characterOneHealth,
      int characterTwoHealth,
      DateTime? time,
      List<BattleAction>? actions});

  @override
  $CharacterCopyWith<$Res> get characterOne;
  @override
  $CharacterCopyWith<$Res>? get characterTwo;
}

/// @nodoc
class __$BattleCopyWithImpl<$Res> extends _$BattleCopyWithImpl<$Res>
    implements _$BattleCopyWith<$Res> {
  __$BattleCopyWithImpl(_Battle _value, $Res Function(_Battle) _then)
      : super(_value, (v) => _then(v as _Battle));

  @override
  _Battle get _value => super._value as _Battle;

  @override
  $Res call({
    Object? playerOneId = freezed,
    Object? characterOne = freezed,
    Object? playerTwoId = freezed,
    Object? characterTwo = freezed,
    Object? reference = freezed,
    Object? battleStatus = freezed,
    Object? characterOneHealth = freezed,
    Object? characterTwoHealth = freezed,
    Object? time = freezed,
    Object? actions = freezed,
  }) {
    return _then(_Battle(
      playerOneId: playerOneId == freezed
          ? _value.playerOneId
          : playerOneId // ignore: cast_nullable_to_non_nullable
              as String,
      characterOne: characterOne == freezed
          ? _value.characterOne
          : characterOne // ignore: cast_nullable_to_non_nullable
              as Character,
      playerTwoId: playerTwoId == freezed
          ? _value.playerTwoId
          : playerTwoId // ignore: cast_nullable_to_non_nullable
              as String?,
      characterTwo: characterTwo == freezed
          ? _value.characterTwo
          : characterTwo // ignore: cast_nullable_to_non_nullable
              as Character?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      battleStatus: battleStatus == freezed
          ? _value.battleStatus
          : battleStatus // ignore: cast_nullable_to_non_nullable
              as BattleStatus,
      characterOneHealth: characterOneHealth == freezed
          ? _value.characterOneHealth
          : characterOneHealth // ignore: cast_nullable_to_non_nullable
              as int,
      characterTwoHealth: characterTwoHealth == freezed
          ? _value.characterTwoHealth
          : characterTwoHealth // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<BattleAction>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Battle implements _Battle {
  const _$_Battle(
      {required this.playerOneId,
      required this.characterOne,
      this.playerTwoId,
      this.characterTwo,
      this.reference,
      this.battleStatus = BattleStatus.idle,
      this.characterOneHealth = 0,
      this.characterTwoHealth = 0,
      this.time,
      this.actions});

  factory _$_Battle.fromJson(Map<String, dynamic> json) =>
      _$$_BattleFromJson(json);

  @override
  final String playerOneId;
  @override
  final Character characterOne;
  @override
  final String? playerTwoId;
  @override
  final Character? characterTwo;
  @override
  final String? reference;
  @JsonKey(defaultValue: BattleStatus.idle)
  @override
  final BattleStatus battleStatus;
  @JsonKey(defaultValue: 0)
  @override
  final int characterOneHealth;
  @JsonKey(defaultValue: 0)
  @override
  final int characterTwoHealth;
  @override
  final DateTime? time;
  @override
  final List<BattleAction>? actions;

  @override
  String toString() {
    return 'Battle(playerOneId: $playerOneId, characterOne: $characterOne, playerTwoId: $playerTwoId, characterTwo: $characterTwo, reference: $reference, battleStatus: $battleStatus, characterOneHealth: $characterOneHealth, characterTwoHealth: $characterTwoHealth, time: $time, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Battle &&
            (identical(other.playerOneId, playerOneId) ||
                const DeepCollectionEquality()
                    .equals(other.playerOneId, playerOneId)) &&
            (identical(other.characterOne, characterOne) ||
                const DeepCollectionEquality()
                    .equals(other.characterOne, characterOne)) &&
            (identical(other.playerTwoId, playerTwoId) ||
                const DeepCollectionEquality()
                    .equals(other.playerTwoId, playerTwoId)) &&
            (identical(other.characterTwo, characterTwo) ||
                const DeepCollectionEquality()
                    .equals(other.characterTwo, characterTwo)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.battleStatus, battleStatus) ||
                const DeepCollectionEquality()
                    .equals(other.battleStatus, battleStatus)) &&
            (identical(other.characterOneHealth, characterOneHealth) ||
                const DeepCollectionEquality()
                    .equals(other.characterOneHealth, characterOneHealth)) &&
            (identical(other.characterTwoHealth, characterTwoHealth) ||
                const DeepCollectionEquality()
                    .equals(other.characterTwoHealth, characterTwoHealth)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playerOneId) ^
      const DeepCollectionEquality().hash(characterOne) ^
      const DeepCollectionEquality().hash(playerTwoId) ^
      const DeepCollectionEquality().hash(characterTwo) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(battleStatus) ^
      const DeepCollectionEquality().hash(characterOneHealth) ^
      const DeepCollectionEquality().hash(characterTwoHealth) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(actions);

  @JsonKey(ignore: true)
  @override
  _$BattleCopyWith<_Battle> get copyWith =>
      __$BattleCopyWithImpl<_Battle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleToJson(this);
  }
}

abstract class _Battle implements Battle {
  const factory _Battle(
      {required String playerOneId,
      required Character characterOne,
      String? playerTwoId,
      Character? characterTwo,
      String? reference,
      BattleStatus battleStatus,
      int characterOneHealth,
      int characterTwoHealth,
      DateTime? time,
      List<BattleAction>? actions}) = _$_Battle;

  factory _Battle.fromJson(Map<String, dynamic> json) = _$_Battle.fromJson;

  @override
  String get playerOneId => throw _privateConstructorUsedError;
  @override
  Character get characterOne => throw _privateConstructorUsedError;
  @override
  String? get playerTwoId => throw _privateConstructorUsedError;
  @override
  Character? get characterTwo => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  BattleStatus get battleStatus => throw _privateConstructorUsedError;
  @override
  int get characterOneHealth => throw _privateConstructorUsedError;
  @override
  int get characterTwoHealth => throw _privateConstructorUsedError;
  @override
  DateTime? get time => throw _privateConstructorUsedError;
  @override
  List<BattleAction>? get actions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BattleCopyWith<_Battle> get copyWith => throw _privateConstructorUsedError;
}

BattleAction _$BattleActionFromJson(Map<String, dynamic> json) {
  return _BattleAction.fromJson(json);
}

/// @nodoc
class _$BattleActionTearOff {
  const _$BattleActionTearOff();

  _BattleAction call(
      {String? reference,
      int player = 1,
      int attack = 0,
      int healthImpact = 10,
      DateTime? time}) {
    return _BattleAction(
      reference: reference,
      player: player,
      attack: attack,
      healthImpact: healthImpact,
      time: time,
    );
  }

  BattleAction fromJson(Map<String, Object> json) {
    return BattleAction.fromJson(json);
  }
}

/// @nodoc
const $BattleAction = _$BattleActionTearOff();

/// @nodoc
mixin _$BattleAction {
  String? get reference => throw _privateConstructorUsedError;
  int get player => throw _privateConstructorUsedError;
  int get attack => throw _privateConstructorUsedError;
  int get healthImpact => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleActionCopyWith<BattleAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleActionCopyWith<$Res> {
  factory $BattleActionCopyWith(
          BattleAction value, $Res Function(BattleAction) then) =
      _$BattleActionCopyWithImpl<$Res>;
  $Res call(
      {String? reference,
      int player,
      int attack,
      int healthImpact,
      DateTime? time});
}

/// @nodoc
class _$BattleActionCopyWithImpl<$Res> implements $BattleActionCopyWith<$Res> {
  _$BattleActionCopyWithImpl(this._value, this._then);

  final BattleAction _value;
  // ignore: unused_field
  final $Res Function(BattleAction) _then;

  @override
  $Res call({
    Object? reference = freezed,
    Object? player = freezed,
    Object? attack = freezed,
    Object? healthImpact = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as int,
      attack: attack == freezed
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      healthImpact: healthImpact == freezed
          ? _value.healthImpact
          : healthImpact // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$BattleActionCopyWith<$Res>
    implements $BattleActionCopyWith<$Res> {
  factory _$BattleActionCopyWith(
          _BattleAction value, $Res Function(_BattleAction) then) =
      __$BattleActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? reference,
      int player,
      int attack,
      int healthImpact,
      DateTime? time});
}

/// @nodoc
class __$BattleActionCopyWithImpl<$Res> extends _$BattleActionCopyWithImpl<$Res>
    implements _$BattleActionCopyWith<$Res> {
  __$BattleActionCopyWithImpl(
      _BattleAction _value, $Res Function(_BattleAction) _then)
      : super(_value, (v) => _then(v as _BattleAction));

  @override
  _BattleAction get _value => super._value as _BattleAction;

  @override
  $Res call({
    Object? reference = freezed,
    Object? player = freezed,
    Object? attack = freezed,
    Object? healthImpact = freezed,
    Object? time = freezed,
  }) {
    return _then(_BattleAction(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as int,
      attack: attack == freezed
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      healthImpact: healthImpact == freezed
          ? _value.healthImpact
          : healthImpact // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BattleAction implements _BattleAction {
  const _$_BattleAction(
      {this.reference,
      this.player = 1,
      this.attack = 0,
      this.healthImpact = 10,
      this.time});

  factory _$_BattleAction.fromJson(Map<String, dynamic> json) =>
      _$$_BattleActionFromJson(json);

  @override
  final String? reference;
  @JsonKey(defaultValue: 1)
  @override
  final int player;
  @JsonKey(defaultValue: 0)
  @override
  final int attack;
  @JsonKey(defaultValue: 10)
  @override
  final int healthImpact;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'BattleAction(reference: $reference, player: $player, attack: $attack, healthImpact: $healthImpact, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BattleAction &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.attack, attack) ||
                const DeepCollectionEquality().equals(other.attack, attack)) &&
            (identical(other.healthImpact, healthImpact) ||
                const DeepCollectionEquality()
                    .equals(other.healthImpact, healthImpact)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(attack) ^
      const DeepCollectionEquality().hash(healthImpact) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$BattleActionCopyWith<_BattleAction> get copyWith =>
      __$BattleActionCopyWithImpl<_BattleAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleActionToJson(this);
  }
}

abstract class _BattleAction implements BattleAction {
  const factory _BattleAction(
      {String? reference,
      int player,
      int attack,
      int healthImpact,
      DateTime? time}) = _$_BattleAction;

  factory _BattleAction.fromJson(Map<String, dynamic> json) =
      _$_BattleAction.fromJson;

  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  int get player => throw _privateConstructorUsedError;
  @override
  int get attack => throw _privateConstructorUsedError;
  @override
  int get healthImpact => throw _privateConstructorUsedError;
  @override
  DateTime? get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BattleActionCopyWith<_BattleAction> get copyWith =>
      throw _privateConstructorUsedError;
}
