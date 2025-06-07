// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:08
import "package:cine_mate/screens/auth/login_screen.dart";
import "package:cine_mate/screens/auth/signup_screen.dart";
import "package:cine_mate/screens/home/home_screen.dart";
import "package:cine_mate/widgets/auth_wrapper.dart";
import "package:flutter/material.dart";

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
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthWrapper(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home: const HomeScreen(), //Replace this with auth check later on
    );
  }
}
