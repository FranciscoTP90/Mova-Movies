// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'popular_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularMoviesResponse _$$_PopularMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PopularMoviesResponse(
      page: json['page'] as int,
      movies: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalPopularMovies: json['total_results'] as int,
    );

Map<String, dynamic> _$$_PopularMoviesResponseToJson(
        _$_PopularMoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalPopularMovies,
    };
