import 'package:freezed_annotation/freezed_annotation.dart';
import 'movie.dart';
part 'popular_movies_response.freezed.dart';
part 'popular_movies_response.g.dart';

@freezed
class PopularMoviesResponse with _$PopularMoviesResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PopularMoviesResponse({
    required int page,
    @JsonKey(name: 'results') required List<Movie> movies,
    required int totalPages,
    @JsonKey(name: 'total_results') required int totalPopularMovies,
  }) = _PopularMoviesResponse;

  factory PopularMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesResponseFromJson(json);
}
