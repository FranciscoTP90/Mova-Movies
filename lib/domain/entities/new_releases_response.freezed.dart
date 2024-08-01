// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_releases_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReleasesResponse _$NewReleasesResponseFromJson(Map<String, dynamic> json) {
  return _NewReleasesResponse.fromJson(json);
}

/// @nodoc
mixin _$NewReleasesResponse {
  Dates get dates => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Movie> get movies => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalMovies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReleasesResponseCopyWith<NewReleasesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReleasesResponseCopyWith<$Res> {
  factory $NewReleasesResponseCopyWith(
          NewReleasesResponse value, $Res Function(NewReleasesResponse) then) =
      _$NewReleasesResponseCopyWithImpl<$Res, NewReleasesResponse>;
  @useResult
  $Res call(
      {Dates dates,
      int page,
      @JsonKey(name: 'results') List<Movie> movies,
      int totalPages,
      @JsonKey(name: 'total_results') int totalMovies});

  $DatesCopyWith<$Res> get dates;
}

/// @nodoc
class _$NewReleasesResponseCopyWithImpl<$Res, $Val extends NewReleasesResponse>
    implements $NewReleasesResponseCopyWith<$Res> {
  _$NewReleasesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? page = null,
    Object? movies = null,
    Object? totalPages = null,
    Object? totalMovies = null,
  }) {
    return _then(_value.copyWith(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates,
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
      totalMovies: null == totalMovies
          ? _value.totalMovies
          : totalMovies // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res> get dates {
    return $DatesCopyWith<$Res>(_value.dates, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewReleasesResponseCopyWith<$Res>
    implements $NewReleasesResponseCopyWith<$Res> {
  factory _$$_NewReleasesResponseCopyWith(_$_NewReleasesResponse value,
          $Res Function(_$_NewReleasesResponse) then) =
      __$$_NewReleasesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dates dates,
      int page,
      @JsonKey(name: 'results') List<Movie> movies,
      int totalPages,
      @JsonKey(name: 'total_results') int totalMovies});

  @override
  $DatesCopyWith<$Res> get dates;
}

/// @nodoc
class __$$_NewReleasesResponseCopyWithImpl<$Res>
    extends _$NewReleasesResponseCopyWithImpl<$Res, _$_NewReleasesResponse>
    implements _$$_NewReleasesResponseCopyWith<$Res> {
  __$$_NewReleasesResponseCopyWithImpl(_$_NewReleasesResponse _value,
      $Res Function(_$_NewReleasesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? page = null,
    Object? movies = null,
    Object? totalPages = null,
    Object? totalMovies = null,
  }) {
    return _then(_$_NewReleasesResponse(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates,
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
      totalMovies: null == totalMovies
          ? _value.totalMovies
          : totalMovies // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_NewReleasesResponse implements _NewReleasesResponse {
  _$_NewReleasesResponse(
      {required this.dates,
      required this.page,
      @JsonKey(name: 'results') required final List<Movie> movies,
      required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalMovies})
      : _movies = movies;

  factory _$_NewReleasesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewReleasesResponseFromJson(json);

  @override
  final Dates dates;
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
  final int totalMovies;

  @override
  String toString() {
    return 'NewReleasesResponse(dates: $dates, page: $page, movies: $movies, totalPages: $totalPages, totalMovies: $totalMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReleasesResponse &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalMovies, totalMovies) ||
                other.totalMovies == totalMovies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_movies), totalPages, totalMovies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewReleasesResponseCopyWith<_$_NewReleasesResponse> get copyWith =>
      __$$_NewReleasesResponseCopyWithImpl<_$_NewReleasesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReleasesResponseToJson(
      this,
    );
  }
}

abstract class _NewReleasesResponse implements NewReleasesResponse {
  factory _NewReleasesResponse(
          {required final Dates dates,
          required final int page,
          @JsonKey(name: 'results') required final List<Movie> movies,
          required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalMovies}) =
      _$_NewReleasesResponse;

  factory _NewReleasesResponse.fromJson(Map<String, dynamic> json) =
      _$_NewReleasesResponse.fromJson;

  @override
  Dates get dates;
  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<Movie> get movies;
  @override
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalMovies;
  @override
  @JsonKey(ignore: true)
  _$$_NewReleasesResponseCopyWith<_$_NewReleasesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  DateTime get maximum => throw _privateConstructorUsedError;
  DateTime get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res, Dates>;
  @useResult
  $Res call({DateTime maximum, DateTime minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res, $Val extends Dates>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_value.copyWith(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatesCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$_DatesCopyWith(_$_Dates value, $Res Function(_$_Dates) then) =
      __$$_DatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime maximum, DateTime minimum});
}

/// @nodoc
class __$$_DatesCopyWithImpl<$Res> extends _$DatesCopyWithImpl<$Res, _$_Dates>
    implements _$$_DatesCopyWith<$Res> {
  __$$_DatesCopyWithImpl(_$_Dates _value, $Res Function(_$_Dates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_$_Dates(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dates implements _Dates {
  _$_Dates({required this.maximum, required this.minimum});

  factory _$_Dates.fromJson(Map<String, dynamic> json) =>
      _$$_DatesFromJson(json);

  @override
  final DateTime maximum;
  @override
  final DateTime minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dates &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatesCopyWith<_$_Dates> get copyWith =>
      __$$_DatesCopyWithImpl<_$_Dates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatesToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  factory _Dates(
      {required final DateTime maximum,
      required final DateTime minimum}) = _$_Dates;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$_Dates.fromJson;

  @override
  DateTime get maximum;
  @override
  DateTime get minimum;
  @override
  @JsonKey(ignore: true)
  _$$_DatesCopyWith<_$_Dates> get copyWith =>
      throw _privateConstructorUsedError;
}
