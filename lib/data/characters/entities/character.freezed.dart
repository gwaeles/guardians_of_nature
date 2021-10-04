// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
class _$CharacterTearOff {
  const _$CharacterTearOff();

  _Character call(
      {required String userId,
      required String nickname,
      String? reference,
      int rank = 1,
      int skillPoints = 12,
      int health = 10,
      int attack = 0,
      int defense = 0,
      int magik = 0,
      DateTime? lastBattle,
      bool lastBattleWon = true}) {
    return _Character(
      userId: userId,
      nickname: nickname,
      reference: reference,
      rank: rank,
      skillPoints: skillPoints,
      health: health,
      attack: attack,
      defense: defense,
      magik: magik,
      lastBattle: lastBattle,
      lastBattleWon: lastBattleWon,
    );
  }

  Character fromJson(Map<String, Object> json) {
    return Character.fromJson(json);
  }
}

/// @nodoc
const $Character = _$CharacterTearOff();

/// @nodoc
mixin _$Character {
  String get userId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get skillPoints => throw _privateConstructorUsedError;
  int get health => throw _privateConstructorUsedError;
  int get attack => throw _privateConstructorUsedError;
  int get defense => throw _privateConstructorUsedError;
  int get magik => throw _privateConstructorUsedError;
  DateTime? get lastBattle => throw _privateConstructorUsedError;
  bool get lastBattleWon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String nickname,
      String? reference,
      int rank,
      int skillPoints,
      int health,
      int attack,
      int defense,
      int magik,
      DateTime? lastBattle,
      bool lastBattleWon});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? nickname = freezed,
    Object? reference = freezed,
    Object? rank = freezed,
    Object? skillPoints = freezed,
    Object? health = freezed,
    Object? attack = freezed,
    Object? defense = freezed,
    Object? magik = freezed,
    Object? lastBattle = freezed,
    Object? lastBattleWon = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      skillPoints: skillPoints == freezed
          ? _value.skillPoints
          : skillPoints // ignore: cast_nullable_to_non_nullable
              as int,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      attack: attack == freezed
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      defense: defense == freezed
          ? _value.defense
          : defense // ignore: cast_nullable_to_non_nullable
              as int,
      magik: magik == freezed
          ? _value.magik
          : magik // ignore: cast_nullable_to_non_nullable
              as int,
      lastBattle: lastBattle == freezed
          ? _value.lastBattle
          : lastBattle // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastBattleWon: lastBattleWon == freezed
          ? _value.lastBattleWon
          : lastBattleWon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) then) =
      __$CharacterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String nickname,
      String? reference,
      int rank,
      int skillPoints,
      int health,
      int attack,
      int defense,
      int magik,
      DateTime? lastBattle,
      bool lastBattleWon});
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(_Character _value, $Res Function(_Character) _then)
      : super(_value, (v) => _then(v as _Character));

  @override
  _Character get _value => super._value as _Character;

  @override
  $Res call({
    Object? userId = freezed,
    Object? nickname = freezed,
    Object? reference = freezed,
    Object? rank = freezed,
    Object? skillPoints = freezed,
    Object? health = freezed,
    Object? attack = freezed,
    Object? defense = freezed,
    Object? magik = freezed,
    Object? lastBattle = freezed,
    Object? lastBattleWon = freezed,
  }) {
    return _then(_Character(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      skillPoints: skillPoints == freezed
          ? _value.skillPoints
          : skillPoints // ignore: cast_nullable_to_non_nullable
              as int,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      attack: attack == freezed
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      defense: defense == freezed
          ? _value.defense
          : defense // ignore: cast_nullable_to_non_nullable
              as int,
      magik: magik == freezed
          ? _value.magik
          : magik // ignore: cast_nullable_to_non_nullable
              as int,
      lastBattle: lastBattle == freezed
          ? _value.lastBattle
          : lastBattle // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastBattleWon: lastBattleWon == freezed
          ? _value.lastBattleWon
          : lastBattleWon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Character implements _Character {
  const _$_Character(
      {required this.userId,
      required this.nickname,
      this.reference,
      this.rank = 1,
      this.skillPoints = 12,
      this.health = 10,
      this.attack = 0,
      this.defense = 0,
      this.magik = 0,
      this.lastBattle,
      this.lastBattleWon = true});

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterFromJson(json);

  @override
  final String userId;
  @override
  final String nickname;
  @override
  final String? reference;
  @JsonKey(defaultValue: 1)
  @override
  final int rank;
  @JsonKey(defaultValue: 12)
  @override
  final int skillPoints;
  @JsonKey(defaultValue: 10)
  @override
  final int health;
  @JsonKey(defaultValue: 0)
  @override
  final int attack;
  @JsonKey(defaultValue: 0)
  @override
  final int defense;
  @JsonKey(defaultValue: 0)
  @override
  final int magik;
  @override
  final DateTime? lastBattle;
  @JsonKey(defaultValue: true)
  @override
  final bool lastBattleWon;

  @override
  String toString() {
    return 'Character(userId: $userId, nickname: $nickname, reference: $reference, rank: $rank, skillPoints: $skillPoints, health: $health, attack: $attack, defense: $defense, magik: $magik, lastBattle: $lastBattle, lastBattleWon: $lastBattleWon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Character &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.rank, rank) ||
                const DeepCollectionEquality().equals(other.rank, rank)) &&
            (identical(other.skillPoints, skillPoints) ||
                const DeepCollectionEquality()
                    .equals(other.skillPoints, skillPoints)) &&
            (identical(other.health, health) ||
                const DeepCollectionEquality().equals(other.health, health)) &&
            (identical(other.attack, attack) ||
                const DeepCollectionEquality().equals(other.attack, attack)) &&
            (identical(other.defense, defense) ||
                const DeepCollectionEquality()
                    .equals(other.defense, defense)) &&
            (identical(other.magik, magik) ||
                const DeepCollectionEquality().equals(other.magik, magik)) &&
            (identical(other.lastBattle, lastBattle) ||
                const DeepCollectionEquality()
                    .equals(other.lastBattle, lastBattle)) &&
            (identical(other.lastBattleWon, lastBattleWon) ||
                const DeepCollectionEquality()
                    .equals(other.lastBattleWon, lastBattleWon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(rank) ^
      const DeepCollectionEquality().hash(skillPoints) ^
      const DeepCollectionEquality().hash(health) ^
      const DeepCollectionEquality().hash(attack) ^
      const DeepCollectionEquality().hash(defense) ^
      const DeepCollectionEquality().hash(magik) ^
      const DeepCollectionEquality().hash(lastBattle) ^
      const DeepCollectionEquality().hash(lastBattleWon);

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterToJson(this);
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {required String userId,
      required String nickname,
      String? reference,
      int rank,
      int skillPoints,
      int health,
      int attack,
      int defense,
      int magik,
      DateTime? lastBattle,
      bool lastBattleWon}) = _$_Character;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$_Character.fromJson;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  int get rank => throw _privateConstructorUsedError;
  @override
  int get skillPoints => throw _privateConstructorUsedError;
  @override
  int get health => throw _privateConstructorUsedError;
  @override
  int get attack => throw _privateConstructorUsedError;
  @override
  int get defense => throw _privateConstructorUsedError;
  @override
  int get magik => throw _privateConstructorUsedError;
  @override
  DateTime? get lastBattle => throw _privateConstructorUsedError;
  @override
  bool get lastBattleWon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith =>
      throw _privateConstructorUsedError;
}
