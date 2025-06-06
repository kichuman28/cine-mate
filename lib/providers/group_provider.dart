// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:12
import 'package:flutter/material.dart';

import '../models/group_model.dart';

class GroupProvider with ChangeNotifier {
  List<Group> _groups = [];

  List<Group> get groups => _groups;

  // Placeholder
  void loadDummyGroups() {
    _groups = [
      Group(id: 'g1', name: 'Interstellar at PVR, 7pm'),
    ];
    notifyListeners();
  }
}
