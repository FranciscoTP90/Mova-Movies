import '../../domain/domain.dart';
import '../datasources/remote_data_source.dart';

class MoviesRepository implements IMoviesRepository {
  MoviesRepository({required IRemoteDataSouce iRemoteDataSouce})
      : _iRemoteDataSouce = iRemoteDataSouce;

  final IRemoteDataSouce _iRemoteDataSouce;

  @override
  Future<PopularMoviesResponse> fetchPopularMovies(
      {required int page, required String language}) async {
    try {
      final popularMoviesResp = await _iRemoteDataSouce.getPopularMovies(
          page: page, language: language);
      return popularMoviesResp;
    } catch (e) {
      throw "$e";
    }
  }

  @override
  Future<List<Genre>> fetchMovieGenres(
      {required int movieID, required String language}) async {
    try {
      final genres = await _iRemoteDataSouce.getMovieGenres(
          movieID: movieID, language: language);
      return genres;
    } catch (e) {
      throw "$e";
    }
  }

  @override
  Future<NewReleasesResponse> fetchNewReleasesMovies(
      {required int page, required String language}) async {
    try {
      final newReleasesResp = await _iRemoteDataSouce.getNewReleases(
          page: page, language: language);
      return newReleasesResp;
    } catch (e) {
      throw "$e";
    }
  }

  @override
  Future<MovieCastResponse> fetchMovieCast(
      {required int movieID, required String language}) async {
    try {
      final movieCastResp = await _iRemoteDataSouce.getMovieCast(
          movieID: movieID, language: language);
      return movieCastResp;
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<PopularMoviesResponse> fetchSimilarMovies(
      {required int movieID, required String language}) async {
    try {
      final moviesResp = await _iRemoteDataSouce.getSimilarMovies(
          movieID: movieID, language: language);
      return moviesResp;
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<String?> fetchVideoKey(
      {required int movieID, required String language}) async {
    try {
      final videoKey = await _iRemoteDataSouce.getVideoKey(
          movieID: movieID, language: language);
      return videoKey;
    } catch (e) {
      throw '$e';
    }
  }
}
