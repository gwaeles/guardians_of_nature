import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:rxdart/subjects.dart';

class CharactersRepository {
  String? _userId;
  final CollectionReference<Character> charactersRef;

  CharactersRepository({
    required this.charactersRef,
  });

  BehaviorSubject<List<Character>>? _characterController;
  StreamSubscription? _subscription;

  String? get userId => _userId;
  set userId(String? value) {
    if (_userId != value) {
      _userId = value;
      _subscribe();
    }
  }

  Stream<List<Character>> watchCharacters() {
    log("[GWA] CharactersRepository watch Characters");

    if (_characterController == null) {
      _characterController = BehaviorSubject<List<Character>>();
      _characterController!.onCancel = () => _onControllerCancelled();

      _subscribe();
    }

    return _characterController!.stream;
  }

  Future<DocumentReference<Character>> add({
    required Character character,
  }) async {
    return charactersRef.add(character);
  }

  Future<void> update({
    required Character character,
  }) async {
    return charactersRef.doc(character.reference).set(character);
  }

  ///
  /// --- Collection subscription --- ///
  ///

  void _subscribe() {
    _dispose();
    if (userId != null) {
      _subscription = charactersRef
          .where(
            'userId',
            isEqualTo: userId,
          )
          .snapshots()
          .listen(_onData);
    }
  }

  void _dispose() {
    log("[GWA] CharactersRepository dispose");
    _subscription?.cancel();
    _subscription = null;
  }

  void _onControllerCancelled() {
    log("[GWA] _controller.onCancel, hasListener: ${_characterController?.hasListener}");
    // Cancel DB subscription on last listener cancel
    if (_characterController?.hasListener != true) {
      _characterController?.close();
      _dispose();
    }
  }

  Future<void> _onData(QuerySnapshot<Character> data) async {
    final items = data.docs
        .map((item) => item.data().copyWith(
              reference: item.reference.id,
            ))
        .toList();

    _characterController?.sink.add(items);
  }
}
