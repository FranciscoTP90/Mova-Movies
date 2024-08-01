// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenresResponse _$GenresResponseFromJson(Map<String, dynamic> json) {
  return _GenresResponse.fromJson(json);
}

/// @nodoc
mixin _$GenresResponse {
  List<Genre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresResponseCopyWith<GenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresResponseCopyWith<$Res> {
  factory $GenresResponseCopyWith(
          GenresResponse value, $Res Function(GenresResponse) then) =
      _$GenresResponseCopyWithImpl<$Res, GenresResponse>;
  @useResult
  $Res call({List<Genre> genres});
}

/// @nodoc
class _$GenresResponseCopyWithImpl<$Res, $Val extends GenresResponse>
    implements $GenresResponseCopyWith<$Res> {
  _$GenresResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenresResponseCopyWith<$Res>
    implements $GenresResponseCopyWith<$Res> {
  factory _$$_GenresResponseCopyWith(
          _$_GenresResponse value, $Res Function(_$_GenresResponse) then) =
      __$$_GenresResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Genre> genres});
}

/// @nodoc
class __$$_GenresResponseCopyWithImpl<$Res>
    extends _$GenresResponseCopyWithImpl<$Res, _$_GenresResponse>
    implements _$$_GenresResponseCopyWith<$Res> {
  __$$_GenresResponseCopyWithImpl(
      _$_GenresResponse _value, $Res Function(_$_GenresResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$_GenresResponse(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenresResponse implements _GenresResponse {
  const _$_GenresResponse({final List<Genre> genres = const <Genre>[]})
      : _genres = genres;

  factory _$_GenresResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GenresResponseFromJson(json);

  final List<Genre> _genres;
  @override
  @JsonKey()
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'GenresResponse(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenresResponse &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenresResponseCopyWith<_$_GenresResponse> get copyWith =>
      __$$_GenresResponseCopyWithImpl<_$_GenresResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenresResponseToJson(
      this,
    );
  }
}

abstract class _GenresResponse implements GenresResponse {
  const factory _GenresResponse({final List<Genre> genres}) = _$_GenresResponse;

  factory _GenresResponse.fromJson(Map<String, dynamic> json) =
      _$_GenresResponse.fromJson;

  @override
  List<Genre> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_GenresResponseCopyWith<_$_GenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
