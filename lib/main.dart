import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'package:cine_mate/providers/auth_provider.dart';
import 'package:cine_mate/providers/movie_provider.dart';
import 'package:cine_mate/providers/group_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => MovieProvider()),
        ChangeNotifierProvider(create: (_) => GroupProvider()),
      ],
      child: const CineMateApp(),
    ),
  );
}
