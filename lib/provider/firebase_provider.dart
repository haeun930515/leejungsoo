import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum AuthStatus { registerSuccess, registerFail, loginSuccess, loginFail }

class FirebaseProvider with ChangeNotifier {
  FirebaseAuth authClient;
  User? user;

  FirebaseProvider({auth}) : authClient = auth ?? FirebaseAuth.instance;

  Future<AuthStatus> registerWithEmail(String email, String password) async {
    try {
      UserCredential credential = await authClient
          .createUserWithEmailAndPassword(email: email, password: password);
      return AuthStatus.registerSuccess;
    } catch (e) {
      return AuthStatus.registerFail;
    }
  }

  saveUser() {
    FirebaseFirestore.instance
        .collection("users")
        .doc("testuserid")
        .set({"email": "sampleEmapl", "url": "urllll"});

    notifyListeners();
  }
}
