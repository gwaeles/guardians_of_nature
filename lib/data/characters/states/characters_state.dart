import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';

part 'characters_state.freezed.dart';

@freezed
class CharactersState with _$CharactersState {
  factory CharactersState.idle() = CharactersIdle;
  factory CharactersState.error() = CharactersError;

  factory CharactersState.loaded({
    required List<Character> characters,
  }) = CharactersLoaded;
}
