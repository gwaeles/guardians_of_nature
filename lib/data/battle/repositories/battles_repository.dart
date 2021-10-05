import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:rxdart/subjects.dart';

class BattlesRepository {
  String? _userId;
  final CollectionReference<Battle> battlesRef;

  BattlesRepository({
    required this.battlesRef,
  });

  BehaviorSubject<List<Battle>>? _idleBattlesController;
  StreamSubscription? _idleBattlesSubscription;

  BehaviorSubject<List<Battle>>? _userBattlesController;
  StreamSubscription? _userBattlesSubscription1;
  StreamSubscription? _userBattlesSubscription2;
  List<Battle>? _userBattles1;
  List<Battle>? _userBattles2;

  String? get userId => _userId;
  set userId(String? value) {
    if (_userId != value) {
      _userId = value;
      //_subscribe();
    }
  }

  Future<DocumentReference<Battle>> add({
    required Battle battle,
  }) async {
    return battlesRef.add(battle);
  }

  Future<void> update({
    required Battle battle,
  }) async {
    return battlesRef.doc(battle.reference).set(battle);
  }

  ///
  /// --- Idle Battles --- ///
  ///

  Stream<List<Battle>> watchIdleBattles() {
    log("[BATTLES] BattlesRepository watch Battles");

    if (_idleBattlesController == null) {
      _idleBattlesController = BehaviorSubject<List<Battle>>();
      _idleBattlesController!.onCancel =
          () => _onIdleBattlesControllerCancelled();

      _idleBattlesSubscribe();
    }

    return _idleBattlesController!.stream;
  }

  void _idleBattlesSubscribe() {
    _idleBattlesDispose();
    if (userId != null) {
      _idleBattlesSubscription = battlesRef
          .where(
            'battleStatus',
            isEqualTo: 'idle',
          )
          .snapshots()
          .listen(_onIdleBattlesData);
    }
  }

  void _idleBattlesDispose() {
    log("[BATTLES] CharactersRepository dispose");
    _idleBattlesSubscription?.cancel();
    _idleBattlesSubscription = null;
  }

  void _onIdleBattlesControllerCancelled() {
    if (_idleBattlesController?.hasListener != true) {
      _idleBattlesController?.close();
      _idleBattlesDispose();
    }
  }

  Future<void> _onIdleBattlesData(QuerySnapshot<Battle> data) async {
    final items = data.docs
        .map((item) => item.data().copyWith(
              reference: item.reference.id,
            ))
        .toList();

    _idleBattlesController?.sink.add(items);
  }

  ///
  /// --- Current User Battles --- ///
  ///

  Stream<List<Battle>> watchUserBattles() {
    log("[BATTLES] BattlesRepository watch Battles");

    if (_userBattlesController == null) {
      _userBattlesController = BehaviorSubject<List<Battle>>();
      _userBattlesController!.onCancel =
          () => _onUserBattlesControllerCancelled();

      _userBattlesSubscribe();
    }

    return _userBattlesController!.stream;
  }

  void _userBattlesSubscribe() {
    _userBattlesDispose();
    if (userId != null) {
      _userBattlesSubscription1 = battlesRef
          .where(
            'playerOneId',
            isEqualTo: userId,
          )
          .snapshots()
          .listen(_onUserBattlesData1);
      _userBattlesSubscription2 = battlesRef
          .where(
            'playerTwoId',
            isEqualTo: userId,
          )
          .snapshots()
          .listen(_onUserBattlesData2);
    }
  }

  void _userBattlesDispose() {
    log("[BATTLES] CharactersRepository dispose");
    _userBattlesSubscription1?.cancel();
    _userBattlesSubscription1 = null;
    _userBattles1 = null;
    _userBattlesSubscription2?.cancel();
    _userBattlesSubscription2 = null;
    _userBattles2 = null;
  }

  void _onUserBattlesControllerCancelled() {
    if (_userBattlesController?.hasListener != true) {
      _userBattlesController?.close();
      _userBattlesDispose();
    }
  }

  Future<void> _onUserBattlesData1(QuerySnapshot<Battle> data) async {
    _userBattles1 = data.docs
        .map((item) => item.data().copyWith(
              reference: item.reference.id,
            ))
        .toList();

    _mergeUserBattlesData();
  }

  Future<void> _onUserBattlesData2(QuerySnapshot<Battle> data) async {
    _userBattles2 = data.docs
        .map((item) => item.data().copyWith(
              reference: item.reference.id,
            ))
        .toList();

    _mergeUserBattlesData();
  }

  void _mergeUserBattlesData() {
    if (_userBattles1 != null && _userBattles2 != null) {
      final List<Battle> items = [..._userBattles1!, ..._userBattles2!]
        ..sort((a, b) => a.time!.isBefore(b.time!) ? 1 : -1);

      _userBattlesController?.sink.add(items);
    }
  }
}
