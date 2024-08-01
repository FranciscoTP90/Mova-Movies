// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularMoviesResponse _$PopularMoviesResponseFromJson(
    Map<String, dynamic> json) {
  return _PopularMoviesResponse.fromJson(json);
}

/// @nodoc
mixin _$PopularMoviesResponse {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Movie> get movies => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalPopularMovies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMoviesResponseCopyWith<PopularMoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesResponseCopyWith<$Res> {
  factory $PopularMoviesResponseCopyWith(PopularMoviesResponse value,
          $Res Function(PopularMoviesResponse) then) =
      _$PopularMoviesResponseCopyWithImpl<$Res, PopularMoviesResponse>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<Movie> movies,
      int totalPages,
      @JsonKey(name: 'total_results') int totalPopularMovies});
}

/// @nodoc
class _$PopularMoviesResponseCopyWithImpl<$Res,
        $Val extends PopularMoviesResponse>
    implements $PopularMoviesResponseCopyWith<$Res> {
  _$PopularMoviesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
    Object? totalPages = null,
    Object? totalPopularMovies = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalPopularMovies: null == totalPopularMovies
          ? _value.totalPopularMovies
          : totalPopularMovies // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PopularMoviesResponseCopyWith<$Res>
    implements $PopularMoviesResponseCopyWith<$Res> {
  factory _$$_PopularMoviesResponseCopyWith(_$_PopularMoviesResponse value,
          $Res Function(_$_PopularMoviesResponse) then) =
      __$$_PopularMoviesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<Movie> movies,
      int totalPages,
      @JsonKey(name: 'total_results') int totalPopularMovies});
}

/// @nodoc
class __$$_PopularMoviesResponseCopyWithImpl<$Res>
    extends _$PopularMoviesResponseCopyWithImpl<$Res, _$_PopularMoviesResponse>
    implements _$$_PopularMoviesResponseCopyWith<$Res> {
  __$$_PopularMoviesResponseCopyWithImpl(_$_PopularMoviesResponse _value,
      $Res Function(_$_PopularMoviesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
    Object? totalPages = null,
    Object? totalPopularMovies = null,
  }) {
    return _then(_$_PopularMoviesResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalPopularMovies: null == totalPopularMovies
          ? _value.totalPopularMovies
          : totalPopularMovies // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PopularMoviesResponse implements _PopularMoviesResponse {
  _$_PopularMoviesResponse(
      {required this.page,
      @JsonKey(name: 'results') required final List<Movie> movies,
      required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalPopularMovies})
      : _movies = movies;

  factory _$_PopularMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PopularMoviesResponseFromJson(json);

  @override
  final int page;
  final List<Movie> _movies;
  @override
  @JsonKey(name: 'results')
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalPopularMovies;

  @override
  String toString() {
    return 'PopularMoviesResponse(page: $page, movies: $movies, totalPages: $totalPages, totalPopularMovies: $totalPopularMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularMoviesResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalPopularMovies, totalPopularMovies) ||
                other.totalPopularMovies == totalPopularMovies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_movies),
      totalPages,
      totalPopularMovies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopularMoviesResponseCopyWith<_$_PopularMoviesResponse> get copyWith =>
      __$$_PopularMoviesResponseCopyWithImpl<_$_PopularMoviesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularMoviesResponseToJson(
      this,
    );
  }
}

abstract class _PopularMoviesResponse implements PopularMoviesResponse {
  factory _PopularMoviesResponse(
      {required final int page,
      @JsonKey(name: 'results')
          required final List<Movie> movies,
      required final int totalPages,
      @JsonKey(name: 'total_results')
          required final int totalPopularMovies}) = _$_PopularMoviesResponse;

  factory _PopularMoviesResponse.fromJson(Map<String, dynamic> json) =
      _$_PopularMoviesResponse.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<Movie> get movies;
  @override
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalPopularMovies;
  @override
  @JsonKey(ignore: true)
  _$$_PopularMoviesResponseCopyWith<_$_PopularMoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
