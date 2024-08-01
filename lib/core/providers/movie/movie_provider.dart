import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'movie_state.dart';

import '../../../data/data.dart';
import '../../../domain/domain.dart';

part 'movie_state_notifier.dart';

final movieNotifierProvider = StateNotifierProvider<MovieNotifier, MovieState>(
    (ref) =>
        MovieNotifier(iMoviesRepository: ref.watch(_movieRepositoryProvider)));

final _movieRepositoryProvider = Provider<IMoviesRepository>(
    (ref) => MoviesRepository(iRemoteDataSouce: DioDataSource()));
