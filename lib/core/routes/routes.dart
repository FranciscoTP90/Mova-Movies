import 'package:flutter/material.dart';

import '../../features/features.dart';

class RoutesApp {
  static const initialRoute = 'mainHome';
  static const movieDetail = 'movieDetail';
  static const seeAllMovies = 'seeAllMovies';

  static Map<String, Widget Function(BuildContext)> routes = {
    initialRoute: (_) => const HomeScreen(),
    movieDetail: (_) => const MovieDetailScreen(),
    seeAllMovies: (_) => const SeeAllMoviesScreen()
  };
}
