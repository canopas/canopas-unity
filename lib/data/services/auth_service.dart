import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:oauth2/oauth2.dart';
import '../state_manager/auth/desktop/desktop_auth_manager.dart';

@Singleton()
class AuthService {
  final DesktopAuthManager _desktopAuthManager;
  final FirebaseFirestore fireStore;

  final firebase_auth.FirebaseAuth firebaseAuth;

  AuthService(this._desktopAuthManager, this.fireStore, this.firebaseAuth);

  Future<firebase_auth.User?> signInWithGoogle() async {
    firebase_auth.User? user;
    if (kIsWeb ||
        defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      try {
        final GoogleSignInAccount? googleSignInAccount =
            await googleSignIn.signIn();
        if (googleSignInAccount != null) {
          final GoogleSignInAuthentication googleSignInAuthentication =
              await googleSignInAccount.authentication;

          final firebase_auth.AuthCredential credential =
              firebase_auth.GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken,
          );

          user = await _signInWithCredentials(credential);
          await googleSignIn.signOut();
        }
      } on Exception {
        rethrow;
      }
    } else if (defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux) {
      try {
        Credentials credentials = await _desktopAuthManager.login();

        firebase_auth.AuthCredential authCredential =
            firebase_auth.GoogleAuthProvider.credential(
                idToken: credentials.idToken,
                accessToken: credentials.accessToken);

        user = await _signInWithCredentials(authCredential);

        await _desktopAuthManager.signOutFromGoogle(credentials.accessToken);
      } on Exception {
        rethrow;
      }
    }
    return user;
  }

  Future<firebase_auth.User?> _signInWithCredentials(
      firebase_auth.AuthCredential authCredential) async {
    firebase_auth.User? user;
    try {
      final firebase_auth.UserCredential userCredential =
          await firebaseAuth.signInWithCredential(authCredential);
      user = userCredential.user;
    } on Exception {
      rethrow;
    }
    return user;
  }

  Future<bool> signOutWithGoogle() async {
    try {
      await firebaseAuth.signOut();
      return true;
    } on Exception {
      return false;
    }
  }
}
