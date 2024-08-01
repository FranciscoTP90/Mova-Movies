// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import '../../../domain/domain.dart';

enum TopTenMoviesStatus { initial, loading, success, error }

enum NewReleasesStatus { initial, loading, success, error }

class HomeState extends Equatable {
  const HomeState(
      {this.topMoviesStatus = TopTenMoviesStatus.initial,
      this.topMovies,
      this.newReleasesMovies,
      this.newReleasesStatus = NewReleasesStatus.initial});

  final PopularMoviesResponse? topMovies;
  final TopTenMoviesStatus topMoviesStatus;
  final NewReleasesResponse? newReleasesMovies;
  final NewReleasesStatus newReleasesStatus;

  factory HomeState.initialState() => const HomeState();

  @override
  List<Object?> get props =>
      [topMovies, topMoviesStatus, newReleasesMovies, newReleasesStatus];

  HomeState copyWith(
      {PopularMoviesResponse? topMovies,
      TopTenMoviesStatus? topMoviesStatus,
      NewReleasesResponse? newReleasesMovies,
      NewReleasesStatus? newReleasesStatus}) {
    return HomeState(
        topMovies: topMovies ?? this.topMovies,
        topMoviesStatus: topMoviesStatus ?? this.topMoviesStatus,
        newReleasesMovies: newReleasesMovies ?? this.newReleasesMovies,
        newReleasesStatus: newReleasesStatus ?? this.newReleasesStatus);
  }
}

extension HomeStateX on HomeState {
  bool get topMoviesSuccess =>
      topMovies?.movies != null &&
      topMoviesStatus == TopTenMoviesStatus.success;

  Movie? get firstMovie => topMovies?.movies.first;
}
