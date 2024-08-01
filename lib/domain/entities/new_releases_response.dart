import 'package:freezed_annotation/freezed_annotation.dart';
import 'movie.dart';
part 'new_releases_response.freezed.dart';
part 'new_releases_response.g.dart';

@freezed
class NewReleasesResponse with _$NewReleasesResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory NewReleasesResponse({
    required Dates dates,
    required int page,
    @JsonKey(name: 'results') required List<Movie> movies,
    required int totalPages,
    @JsonKey(name: 'total_results') required int totalMovies,
  }) = _NewReleasesResponse;

  factory NewReleasesResponse.fromJson(Map<String, dynamic> json) =>
      _$NewReleasesResponseFromJson(json);
}

@freezed
class Dates with _$Dates {
  factory Dates({
    required DateTime maximum,
    required DateTime minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}
