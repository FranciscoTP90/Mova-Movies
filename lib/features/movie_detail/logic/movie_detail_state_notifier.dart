part of 'movie_detail_provider.dart';

class MovieDetailNotifier extends StateNotifier<MovieDetailState> {
  MovieDetailNotifier(
      {required IUsersRepository iUserRepo,
      required IMoviesRepository iMoviesRepo})
      : _iMoviesRepository = iMoviesRepo,
        _iUsersRepository = iUserRepo,
        super(MovieDetailState.initialState());

  final IUsersRepository _iUsersRepository;
  final IMoviesRepository _iMoviesRepository;

  Future<List<User>> getUsersComments() async {
    try {
      final users = await _iUsersRepository.fetchUsersComments();
      return users;
    } catch (_) {
      rethrow;
    }
  }

  Future<List<Cast>> getMovieCast(
      {required int movieID, required String language}) async {
    try {
      if (state.moviesCast.containsKey(movieID)) {
        return state.moviesCast[movieID]!;
      }
      final MovieCastResponse movieCastResp = await _iMoviesRepository
          .fetchMovieCast(movieID: movieID, language: language);

      final moviesCast = {...state.moviesCast};
      moviesCast[movieID] = movieCastResp.cast;
      state = state.copyWith(moviesCast: moviesCast);
      return movieCastResp.cast;
    } catch (_) {
      rethrow;
    }
  }

  Future<List<Movie>> getSimilarMovies(
      {required int movieID, required String language}) async {
    try {
      final moviesResp = await _iMoviesRepository.fetchSimilarMovies(
          movieID: movieID, language: language);
      return moviesResp.movies;
    } catch (_) {
      rethrow;
    }
  }
}
