import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/repositories/characters_repository.dart';
import 'package:guardians_of_nature/data/characters/states/character_state.dart';

class CharacterBloc extends Cubit<CharacterState> {
  final CharactersRepository repository;
  final String characterReference;

  CharacterBloc({
    required this.repository,
    required this.characterReference,
  }) : super(CharacterState.idle());

  StreamSubscription? _repoSubscription;

  ///
  /// --- SUBSCRIBTION --- ///
  ///

  void init() {
    // Repo stream subscription
    _repoSubscription?.cancel();
    _repoSubscription = repository.watchCharacters().listen(_onData);
  }

  Future<void> update({
    required Character character,
  }) async {
    return repository.update(character: character);
  }

  @override
  Future<void> close() {
    _repoSubscription?.cancel();
    _repoSubscription = null;
    return super.close();
  }

  void _onData(List<Character> _data) {
    Character? character;

    for (Character element in _data) {
      if (element.reference == characterReference) {
        character = element;
        break;
      }
    }

    if (character != null) {
      emit(
        CharacterState.loaded(
          character: character,
        ),
      );
    } else {
      emit(
        CharacterState.unknown(),
      );
    }
  }
}
