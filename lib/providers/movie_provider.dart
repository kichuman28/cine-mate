// Created by: Adwaith Jayasankar, Created at: 07-06-2025 01:12
import 'package:flutter/material.dart';

import 'package:cine_mate/models/movie_model.dart';

class MovieProvider with ChangeNotifier {
  List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  // Placeholder: Replace with real TMDB fetch
  void loadDummyMovies() {
    _movies = [
      Movie(id: '1', title: 'Inception'),
      Movie(id: '2', title: 'Interstellar'),
    ];
    notifyListeners();
  }
}
