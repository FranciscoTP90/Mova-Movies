import '../entities/entities.dart';

abstract class IMoviesRepository {
  Future<PopularMoviesResponse> fetchPopularMovies(
      {required int page, required String language});

  Future<List<Genre>> fetchMovieGenres(
      {required int movieID, required String language});

  Future<NewReleasesResponse> fetchNewReleasesMovies(
      {required int page, required String language});

  Future<MovieCastResponse> fetchMovieCast(
      {required int movieID, required String language});

  Future<PopularMoviesResponse> fetchSimilarMovies(
      {required int movieID, required String language});

  Future<String?> fetchVideoKey(
      {required int movieID, required String language});
}
