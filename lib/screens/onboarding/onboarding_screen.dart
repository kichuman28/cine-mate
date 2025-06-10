// Created by: Adwaith Jayasankar, Created at: 08-06-2025 13:37
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cine_mate/providers/user_provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _movieController = TextEditingController();
  final _genreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
