import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  factory CharacterState.idle() = CharacterIdle;
  factory CharacterState.error() = CharacterError;
  factory CharacterState.unknown() = CharacterUnknown;

  factory CharacterState.loaded({
    required Character character,
  }) = CharacterLoaded;
}
