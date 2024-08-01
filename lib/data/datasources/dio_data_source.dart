import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

import '../../domain/entities/entities.dart';
import 'datasources.dart';

PopularMoviesResponse _parsePopularMovies(Map<String, dynamic> responseData) {
  final popular = PopularMoviesResponse.fromJson(responseData);
  return popular;
}

String? _parseMovieVideos(dynamic responseData) {
  final movieResp = MovieVideosResponse.fromJson(responseData);
  return movieResp.videos.isEmpty ? null : movieResp.videos[0].key;
}

MovieCastResponse _parseMovieCast(dynamic responseData) {
  return MovieCastResponse.fromJson(responseData);
}

NewReleasesResponse _parseNewRelease(dynamic responseData) {
  return NewReleasesResponse.fromJson(responseData);
}

List<Genre> _parseGenres(dynamic responseData) {
  final genresResp = GenresResponse.fromJson(responseData);
  return genresResp.genres;
}

class DioDataSource implements IRemoteDataSouce {
  DioDataSource._private();
  static final DioDataSource _instance = DioDataSource._private();

  factory DioDataSource() {
    return _instance;
  }

  Dio? _dio;

  Dio dio() {
    try {
      const tmdbApiKey = String.fromEnvironment('TMDB_KEY');
      if (tmdbApiKey.isEmpty) {
        throw AssertionError('TMDB_KEY is not set');
      }
      _dio ??= Dio(BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3/',
        queryParameters: {'api_key': tmdbApiKey},
      ));
      return _dio!;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PopularMoviesResponse> getPopularMovies(
      {required int page, required String language}) async {
    try {
      final response = await dio().get<Map<String, dynamic>>('movie/popular',
          queryParameters: {'page': page, 'language': language});
      if (response.data != null) {
        return compute(_parsePopularMovies, response.data!);
      }
      throw Exception('code: ${response.statusCode}, msg: Data is null');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<Genre>> getMovieGenres(
      {required int movieID, required String language}) async {
    try {
      final response = await dio().get<Map<String, dynamic>>('movie/$movieID',
          queryParameters: {'language': language});

      return compute(_parseGenres, response.data);
    } catch (e) {
      throw Exception("$e");
    }
  }

  @override
  Future<NewReleasesResponse> getNewReleases(
      {required int page, required String language}) async {
    try {
      final response = await dio().get<Map<String, dynamic>>('movie/upcoming',
          queryParameters: {'page': page, 'language': language});
      if (response.data != null) {
        return compute(_parseNewRelease, response.data);
      }
      throw Exception('code: ${response.statusCode}, msg: Data is null');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieCastResponse> getMovieCast(
      {required int movieID, required String language}) async {
    try {
      final response = await dio().get('movie/$movieID/credits',
          queryParameters: {'language': language});

      if (response.data != null) {
        return compute(_parseMovieCast, response.data);
      }
      throw Exception('code: ${response.statusCode}, msg: Data is null');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<PopularMoviesResponse> getSimilarMovies(
      {required int movieID, required String language}) async {
    try {
      final response = await dio().get<Map<String, dynamic>>(
          'movie/$movieID/similar',
          queryParameters: {'language': language});
      if (response.data != null) {
        return compute(_parsePopularMovies, response.data!);
      }

      throw Exception('code: ${response.statusCode}, msg: Data is null');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String?> getVideoKey(
      {required int movieID, required String language}) async {
    try {
      final response = await dio().get('movie/$movieID/videos',
          queryParameters: {'language': language});

      if (response.data != null) {
        return compute(_parseMovieVideos, response.data);
      }

      throw Exception('code: ${response.statusCode}, msg: Data is null');
    } catch (_) {
      return null;
    }
  }
}
