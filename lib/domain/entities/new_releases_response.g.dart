// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'new_releases_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewReleasesResponse _$$_NewReleasesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NewReleasesResponse(
      dates: Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int,
      movies: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalMovies: json['total_results'] as int,
    );

Map<String, dynamic> _$$_NewReleasesResponseToJson(
        _$_NewReleasesResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalMovies,
    };

_$_Dates _$$_DatesFromJson(Map<String, dynamic> json) => _$_Dates(
      maximum: DateTime.parse(json['maximum'] as String),
      minimum: DateTime.parse(json['minimum'] as String),
    );

Map<String, dynamic> _$$_DatesToJson(_$_Dates instance) => <String, dynamic>{
      'maximum': instance.maximum.toIso8601String(),
      'minimum': instance.minimum.toIso8601String(),
    };
