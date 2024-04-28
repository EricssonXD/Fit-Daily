import "package:flutter/foundation.dart";
import "package:google_sign_in/google_sign_in.dart";
import "package:firebase_auth/firebase_auth.dart";

abstract class FirebaseGoogleSignin {
  static Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(scopes: ['email']).signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      debugPrint('exception->$e');
    }
    return null;
  }

  static Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
