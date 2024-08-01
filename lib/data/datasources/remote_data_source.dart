import '../../domain/entities/entities.dart';

//Por ejemplo se puede implementar con http o con dio
abstract class IRemoteDataSouce {
  Future<PopularMoviesResponse> getPopularMovies({
    required int page,
    required String language,
  });

  Future<List<Genre>> getMovieGenres(
      {required int movieID, required String language});

  Future<NewReleasesResponse> getNewReleases({
    required int page,
    required String language,
  });

  Future<MovieCastResponse> getMovieCast(
      {required int movieID, required String language});

  Future<PopularMoviesResponse> getSimilarMovies(
      {required int movieID, required String language});

  Future<String?> getVideoKey({required int movieID, required String language});
}
