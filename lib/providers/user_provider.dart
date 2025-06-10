// Created by: Adwaith Jayasankar, Created at: 08-06-2025 13:28
import 'package:flutter/material.dart';
import 'package:cine_mate/core/services/firestore_service.dart';

class UserProvider with ChangeNotifier {
  Map<String, dynamic>? _userData;
  final FirestoreService _firestoreService = FirestoreService();

  Map<String, dynamic>? get userData => _userData;

  Future<void> fetchUserData() async {
    _userData = await _firestoreService.getUserProfile();
    notifyListeners();
  }

  Future<void> updateUserData(Map<String, dynamic> newData) async {
    await _firestoreService.saveUserProfile(newData);
    _userData = newData;
    notifyListeners();
  }

  bool get isFirstTimerUser => _userData == null;
}
