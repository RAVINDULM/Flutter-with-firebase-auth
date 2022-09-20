import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleauth/screens/home.screen.dart';
import 'package:googleauth/screens/welcome.screen..dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<void> googleSignIn(context) async {
  final gooleSignIn = GoogleSignIn();
  final googleSignInAccount = await gooleSignIn.signIn();
  if (googleSignInAccount != null) {
    final googleAuth = await googleSignInAccount.authentication;
    if (googleAuth.accessToken != null && googleAuth.idToken != null) {
      try {
        await auth.signInWithCredential(GoogleAuthProvider.credential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken));
        // Navigator.of(context).pushReplacement(WelcomeScreen())
        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen())
                  );
        print("successfully login!");
      } catch (e) {
        print("failed login!");
      }
    }
  }
}
