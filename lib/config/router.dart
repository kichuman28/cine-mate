// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:19
import 'package:cine_mate/screens/auth/login_screen.dart';
import 'package:cine_mate/screens/auth/signup_screen.dart';
import 'package:cine_mate/screens/home/home_view.dart';
import 'package:cine_mate/widgets/auth_wrapper.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String authWrapper = "/";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String home = "/home";

  static Map<String, WidgetBuilder> routes = {
    authWrapper: (context) => const AuthWrapper(),
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
    home: (context) => const HomeView(),
  };
}
