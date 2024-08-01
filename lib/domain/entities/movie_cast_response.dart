import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_cast_response.freezed.dart';
part 'movie_cast_response.g.dart';

@freezed
class MovieCastResponse with _$MovieCastResponse {
  const factory MovieCastResponse({
    required int id,
    @Default(<Cast>[]) List<Cast> cast,
    @Default(<Cast>[]) List<Cast> crew,
  }) = _MovieCastResponse;

  factory MovieCastResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieCastResponseFromJson(json);
}

@freezed
class Cast with _$Cast {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Cast({
    required bool adult,
    required int gender,
    required int id,
    required String knownForDepartment,
    required String name,
    required String originalName,
    required double popularity,
    String? profilePath,
    int? castId,
    String? character,
    required String creditId,
    int? order,
    String? department,
    String? job,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
