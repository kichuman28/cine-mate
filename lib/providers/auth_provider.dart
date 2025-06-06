// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:11
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;
  User? get user => _user;

  AuthProvider() {
    _auth.authStateChanges().listen(_onAuthStateChanged);
  }

  Future<void> _onAuthStateChanged(User? user) async {
    _user = user;
    notifyListeners();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Placeholder methods (add your own later)
  Future<void> signIn(String email, String password) async {}
  Future<void> signUp(String email, String password) async {}
}
