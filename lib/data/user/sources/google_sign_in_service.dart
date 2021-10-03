import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

///
/// This class is a signInWithGoogleAccount method wrapper witch can be
/// easily mocked in tests
///
class GoogleSignInService {
  Future<User?> signInWithGoogleAccount(
    GoogleSignInAccount googleSignInAccount,
  ) async {
    final googleSignInAuthentication = await googleSignInAccount.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return authResult.user;
  }
}
