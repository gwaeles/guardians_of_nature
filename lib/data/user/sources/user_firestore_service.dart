import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guardians_of_nature/data/user/entities/user.dart';

class UserFireStoreProvider {
  final database = FirebaseFirestore.instance;
  final String userId;

  Stream<User>? _userStream;

  UserFireStoreProvider(this.userId);

  Stream<User> fetchUser() {
    if (_userStream != null) {
      return _userStream!;
    }

    _userStream = database
        .collection("members")
        .doc(userId)
        .snapshots()
        .map((document) => User.fromJson(document.data()!));

    return _userStream!;
  }

  Future<bool> saveUser(User user) async {
    try {
      await database.collection("members").doc(userId).update(user.toJson());
    } catch (e) {
      return false;
    }

    return true;
  }
}
