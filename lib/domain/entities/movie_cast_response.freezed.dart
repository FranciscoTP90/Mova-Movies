// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_cast_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieCastResponse _$MovieCastResponseFromJson(Map<String, dynamic> json) {
  return _MovieCastResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieCastResponse {
  int get id => throw _privateConstructorUsedError;
  List<Cast> get cast => throw _privateConstructorUsedError;
  List<Cast> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCastResponseCopyWith<MovieCastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastResponseCopyWith<$Res> {
  factory $MovieCastResponseCopyWith(
          MovieCastResponse value, $Res Function(MovieCastResponse) then) =
      _$MovieCastResponseCopyWithImpl<$Res, MovieCastResponse>;
  @useResult
  $Res call({int id, List<Cast> cast, List<Cast> crew});
}

/// @nodoc
class _$MovieCastResponseCopyWithImpl<$Res, $Val extends MovieCastResponse>
    implements $MovieCastResponseCopyWith<$Res> {
  _$MovieCastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCastResponseCopyWith<$Res>
    implements $MovieCastResponseCopyWith<$Res> {
  factory _$$_MovieCastResponseCopyWith(_$_MovieCastResponse value,
          $Res Function(_$_MovieCastResponse) then) =
      __$$_MovieCastResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Cast> cast, List<Cast> crew});
}

/// @nodoc
class __$$_MovieCastResponseCopyWithImpl<$Res>
    extends _$MovieCastResponseCopyWithImpl<$Res, _$_MovieCastResponse>
    implements _$$_MovieCastResponseCopyWith<$Res> {
  __$$_MovieCastResponseCopyWithImpl(
      _$_MovieCastResponse _value, $Res Function(_$_MovieCastResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$_MovieCastResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCastResponse implements _MovieCastResponse {
  const _$_MovieCastResponse(
      {required this.id,
      final List<Cast> cast = const <Cast>[],
      final List<Cast> crew = const <Cast>[]})
      : _cast = cast,
        _crew = crew;

  factory _$_MovieCastResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieCastResponseFromJson(json);

  @override
  final int id;
  final List<Cast> _cast;
  @override
  @JsonKey()
  List<Cast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<Cast> _crew;
  @override
  @JsonKey()
  List<Cast> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'MovieCastResponse(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieCastResponse &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCastResponseCopyWith<_$_MovieCastResponse> get copyWith =>
      __$$_MovieCastResponseCopyWithImpl<_$_MovieCastResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieCastResponseToJson(
      this,
    );
  }
}

abstract class _MovieCastResponse implements MovieCastResponse {
  const factory _MovieCastResponse(
      {required final int id,
      final List<Cast> cast,
      final List<Cast> crew}) = _$_MovieCastResponse;

  factory _MovieCastResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieCastResponse.fromJson;

  @override
  int get id;
  @override
  List<Cast> get cast;
  @override
  List<Cast> get crew;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCastResponseCopyWith<_$_MovieCastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  bool get adult => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get knownForDepartment => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String? get profilePath => throw _privateConstructorUsedError;
  int? get castId => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  String get creditId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {bool adult,
      int gender,
      int id,
      String knownForDepartment,
      String name,
      String originalName,
      double popularity,
      String? profilePath,
      int? castId,
      String? character,
      String creditId,
      int? order,
      String? department,
      String? job});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? knownForDepartment = null,
    Object? name = null,
    Object? originalName = null,
    Object? popularity = null,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = null,
    Object? order = freezed,
    Object? department = freezed,
    Object? job = freezed,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      int gender,
      int id,
      String knownForDepartment,
      String name,
      String originalName,
      double popularity,
      String? profilePath,
      int? castId,
      String? character,
      String creditId,
      int? order,
      String? department,
      String? job});
}

/// @nodoc
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res, _$_Cast>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? knownForDepartment = null,
    Object? name = null,
    Object? originalName = null,
    Object? popularity = null,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = null,
    Object? order = freezed,
    Object? department = freezed,
    Object? job = freezed,
  }) {
    return _then(_$_Cast(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Cast implements _Cast {
  _$_Cast(
      {required this.adult,
      required this.gender,
      required this.id,
      required this.knownForDepartment,
      required this.name,
      required this.originalName,
      required this.popularity,
      this.profilePath,
      this.castId,
      this.character,
      required this.creditId,
      this.order,
      this.department,
      this.job});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final bool adult;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String knownForDepartment;
  @override
  final String name;
  @override
  final String originalName;
  @override
  final double popularity;
  @override
  final String? profilePath;
  @override
  final int? castId;
  @override
  final String? character;
  @override
  final String creditId;
  @override
  final int? order;
  @override
  final String? department;
  @override
  final String? job;

  @override
  String toString() {
    return 'Cast(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order, department: $department, job: $job)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.castId, castId) || other.castId == castId) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      originalName,
      popularity,
      profilePath,
      castId,
      character,
      creditId,
      order,
      department,
      job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  factory _Cast(
      {required final bool adult,
      required final int gender,
      required final int id,
      required final String knownForDepartment,
      required final String name,
      required final String originalName,
      required final double popularity,
      final String? profilePath,
      final int? castId,
      final String? character,
      required final String creditId,
      final int? order,
      final String? department,
      final String? job}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  bool get adult;
  @override
  int get gender;
  @override
  int get id;
  @override
  String get knownForDepartment;
  @override
  String get name;
  @override
  String get originalName;
  @override
  double get popularity;
  @override
  String? get profilePath;
  @override
  int? get castId;
  @override
  String? get character;
  @override
  String get creditId;
  @override
  int? get order;
  @override
  String? get department;
  @override
  String? get job;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}
