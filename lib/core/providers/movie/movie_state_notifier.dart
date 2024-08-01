part of 'movie_provider.dart';

class MovieNotifier extends StateNotifier<MovieState> {
  MovieNotifier({required IMoviesRepository iMoviesRepository})
      : _iMoviesRepository = iMoviesRepository,
        super(MovieState.initialState());

  final IMoviesRepository _iMoviesRepository;

  Future<List<Genre>> getMovieGenres(
      {required int movieID, required String language}) async {
    try {
      final genres = await _iMoviesRepository.fetchMovieGenres(
          movieID: movieID, language: language);
      return genres;
    } catch (_) {
      rethrow;
    }
  }

  Future<String?> getVideoKey(
      {required int movieID, required String language}) async {
    try {
      final videoKey = await _iMoviesRepository.fetchVideoKey(
          movieID: movieID, language: language);
      return videoKey;
    } catch (e) {
      rethrow;
    }
  }
}
