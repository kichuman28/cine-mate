// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:08
import "package:flutter/material.dart";
import 'package:cine_mate/views/home/home_screen.dart';

class CineMateApp extends StatelessWidget {
  const CineMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CineMate",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.deepPurple,
        ),
      ),
      home: const HomeScreen(), //Replace this with auth check later on
    );
  }
}
