import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';
import '../../../domain/domain.dart';
import 'movie_detail_state.dart';

part 'movie_detail_state_notifier.dart';

final movieDetailNotifierProvider =
    StateNotifierProvider<MovieDetailNotifier, MovieDetailState>((ref) {
  return MovieDetailNotifier(
      iUserRepo: ref.watch(_userRepositoryProvider),
      iMoviesRepo: ref.watch(_moviesReposotoryProvider));
});

final _userRepositoryProvider = Provider<IUsersRepository>(
    (ref) => UsersRepository(iLocalDataSource: JsonDataSource()));

final _moviesReposotoryProvider = Provider<IMoviesRepository>(
    (ref) => MoviesRepository(iRemoteDataSouce: DioDataSource()));
