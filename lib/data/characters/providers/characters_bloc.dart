import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/repositories/characters_repository.dart';
import 'package:guardians_of_nature/data/characters/states/characters_state.dart';

class CharactersBloc extends Cubit<CharactersState> {
  final CharactersRepository repository;

  CharactersBloc({
    required this.repository,
  }) : super(CharactersState.idle());

  StreamSubscription? _repoSubscription;

  ///
  /// --- SUBSCRIBTION --- ///
  ///

  void init() {
    // Repo stream subscription
    _repoSubscription?.cancel();
    _repoSubscription = repository.watchCharacters().listen(_onData);
  }

  Character? randomGet() {
    if (state is CharactersLoaded) {
      final characters = (state as CharactersLoaded).characters.where(
          (element) =>
              element.lastBattleWon ||
              element.lastBattle?.isBefore(
                      DateTime.now().add(const Duration(seconds: -30))) !=
                  false);
      if (characters.isNotEmpty) {
        final random = Random().nextInt(characters.length);
        return characters.elementAt(random);
      }
    }
  }

  Future<DocumentReference<Character>> add({
    required Character character,
  }) async {
    return repository.add(character: character);
  }

  @override
  Future<void> close() {
    _repoSubscription?.cancel();
    _repoSubscription = null;
    return super.close();
  }

  void _onData(List<Character> _data) {
    emit(
      CharactersState.loaded(
        characters: _data,
      ),
    );
  }
}
