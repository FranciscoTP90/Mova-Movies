// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../domain/entities/entities.dart';

enum CommentsState { initial, loading, success, error }

class MovieDetailState extends Equatable {
  const MovieDetailState({this.moviesCast = const {}});

  final Map<int, List<Cast>> moviesCast;

  factory MovieDetailState.initialState() => const MovieDetailState();
  @override
  List<Object?> get props => [moviesCast];

  MovieDetailState copyWith({
    Map<int, List<Cast>>? moviesCast,
  }) {
    return MovieDetailState(
      moviesCast: moviesCast ?? this.moviesCast,
    );
  }
}
