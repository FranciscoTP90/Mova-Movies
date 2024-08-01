// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_videos_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieVideosResponse _$MovieVideosResponseFromJson(Map<String, dynamic> json) {
  return _MovieVideosResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieVideosResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Video> get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideosResponseCopyWith<MovieVideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideosResponseCopyWith<$Res> {
  factory $MovieVideosResponseCopyWith(
          MovieVideosResponse value, $Res Function(MovieVideosResponse) then) =
      _$MovieVideosResponseCopyWithImpl<$Res, MovieVideosResponse>;
  @useResult
  $Res call({int id, @JsonKey(name: 'results') List<Video> videos});
}

/// @nodoc
class _$MovieVideosResponseCopyWithImpl<$Res, $Val extends MovieVideosResponse>
    implements $MovieVideosResponseCopyWith<$Res> {
  _$MovieVideosResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieVideosResponseCopyWith<$Res>
    implements $MovieVideosResponseCopyWith<$Res> {
  factory _$$_MovieVideosResponseCopyWith(_$_MovieVideosResponse value,
          $Res Function(_$_MovieVideosResponse) then) =
      __$$_MovieVideosResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'results') List<Video> videos});
}

/// @nodoc
class __$$_MovieVideosResponseCopyWithImpl<$Res>
    extends _$MovieVideosResponseCopyWithImpl<$Res, _$_MovieVideosResponse>
    implements _$$_MovieVideosResponseCopyWith<$Res> {
  __$$_MovieVideosResponseCopyWithImpl(_$_MovieVideosResponse _value,
      $Res Function(_$_MovieVideosResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videos = null,
  }) {
    return _then(_$_MovieVideosResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieVideosResponse implements _MovieVideosResponse {
  const _$_MovieVideosResponse(
      {required this.id,
      @JsonKey(name: 'results') final List<Video> videos = const <Video>[]})
      : _videos = videos;

  factory _$_MovieVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieVideosResponseFromJson(json);

  @override
  final int id;
  final List<Video> _videos;
  @override
  @JsonKey(name: 'results')
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'MovieVideosResponse(id: $id, videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieVideosResponse &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieVideosResponseCopyWith<_$_MovieVideosResponse> get copyWith =>
      __$$_MovieVideosResponseCopyWithImpl<_$_MovieVideosResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieVideosResponseToJson(
      this,
    );
  }
}

abstract class _MovieVideosResponse implements MovieVideosResponse {
  const factory _MovieVideosResponse(
          {required final int id,
          @JsonKey(name: 'results') final List<Video> videos}) =
      _$_MovieVideosResponse;

  factory _MovieVideosResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieVideosResponse.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'results')
  List<Video> get videos;
  @override
  @JsonKey(ignore: true)
  _$$_MovieVideosResponseCopyWith<_$_MovieVideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: 'iso_639_1')
  String get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String get iso31661 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get official => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_639_1') String iso6391,
      @JsonKey(name: 'iso_3166_1') String iso31661,
      String name,
      String key,
      String site,
      int size,
      String type,
      bool official,
      DateTime publishedAt,
      String id});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso6391 = null,
    Object? iso31661 = null,
    Object? name = null,
    Object? key = null,
    Object? site = null,
    Object? size = null,
    Object? type = null,
    Object? official = null,
    Object? publishedAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$_VideoCopyWith(_$_Video value, $Res Function(_$_Video) then) =
      __$$_VideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_639_1') String iso6391,
      @JsonKey(name: 'iso_3166_1') String iso31661,
      String name,
      String key,
      String site,
      int size,
      String type,
      bool official,
      DateTime publishedAt,
      String id});
}

/// @nodoc
class __$$_VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res, _$_Video>
    implements _$$_VideoCopyWith<$Res> {
  __$$_VideoCopyWithImpl(_$_Video _value, $Res Function(_$_Video) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso6391 = null,
    Object? iso31661 = null,
    Object? name = null,
    Object? key = null,
    Object? site = null,
    Object? size = null,
    Object? type = null,
    Object? official = null,
    Object? publishedAt = null,
    Object? id = null,
  }) {
    return _then(_$_Video(
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Video implements _Video {
  _$_Video(
      {@JsonKey(name: 'iso_639_1') required this.iso6391,
      @JsonKey(name: 'iso_3166_1') required this.iso31661,
      required this.name,
      required this.key,
      required this.site,
      required this.size,
      required this.type,
      required this.official,
      required this.publishedAt,
      required this.id});

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

  @override
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  @override
  final String name;
  @override
  final String key;
  @override
  final String site;
  @override
  final int size;
  @override
  final String type;
  @override
  final bool official;
  @override
  final DateTime publishedAt;
  @override
  final String id;

  @override
  String toString() {
    return 'Video(iso6391: $iso6391, iso31661: $iso31661, name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Video &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso6391, iso31661, name, key,
      site, size, type, official, publishedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      __$$_VideoCopyWithImpl<_$_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  factory _Video(
      {@JsonKey(name: 'iso_639_1') required final String iso6391,
      @JsonKey(name: 'iso_3166_1') required final String iso31661,
      required final String name,
      required final String key,
      required final String site,
      required final int size,
      required final String type,
      required final bool official,
      required final DateTime publishedAt,
      required final String id}) = _$_Video;

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  @JsonKey(name: 'iso_639_1')
  String get iso6391;
  @override
  @JsonKey(name: 'iso_3166_1')
  String get iso31661;
  @override
  String get name;
  @override
  String get key;
  @override
  String get site;
  @override
  int get size;
  @override
  String get type;
  @override
  bool get official;
  @override
  DateTime get publishedAt;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      throw _privateConstructorUsedError;
}
