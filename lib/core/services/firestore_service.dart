// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:10
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserProfile(Map<String, dynamic> data) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      await _db.collection('users').doc(uid).set(data);
    }
  }

  Future<Map<String, dynamic>?> getUserProfile() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      final doc = await _db.collection('users').doc(uid).get();
      return doc.exists ? doc.data() : null;
    }
    return null;
  }
}
