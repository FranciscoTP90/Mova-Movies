import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_videos_response.freezed.dart';
part 'movie_videos_response.g.dart';

@freezed
class MovieVideosResponse with _$MovieVideosResponse {
  const factory MovieVideosResponse({
    required int id,
    @JsonKey(name: 'results') @Default(<Video>[]) List<Video> videos,
  }) = _MovieVideosResponse;

  factory MovieVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieVideosResponseFromJson(json);
}

@freezed
class Video with _$Video {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Video({
    @JsonKey(name: 'iso_639_1') required String iso6391,
    @JsonKey(name: 'iso_3166_1') required String iso31661,
    required String name,
    required String key,
    required String site,
    required int size,
    required String type,
    required bool official,
    required DateTime publishedAt,
    required String id,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
