part of 'home_provider.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(this._iMoviesRepository) : super(HomeState.initialState());

  final IMoviesRepository _iMoviesRepository;

  Future<void> getTopMovies(
      {required int page, required String language}) async {
    state = state.copyWith(topMoviesStatus: TopTenMoviesStatus.loading);
    try {
      final topMoviesResp = await _iMoviesRepository.fetchPopularMovies(
          page: page, language: language);

      state = state.copyWith(
          topMoviesStatus: TopTenMoviesStatus.success,
          topMovies: topMoviesResp);
    } catch (_) {
      state = state.copyWith(
          topMoviesStatus: TopTenMoviesStatus.error, topMovies: null);
    }
  }

  Future<void> getNewReleasesMovies(
      {required int page, required String language}) async {
    state = state.copyWith(newReleasesStatus: NewReleasesStatus.loading);
    try {
      final newReleasesResp = await _iMoviesRepository.fetchNewReleasesMovies(
          page: page, language: language);

      state = state.copyWith(
          newReleasesStatus: NewReleasesStatus.success,
          newReleasesMovies: newReleasesResp);
    } catch (_) {
      state = state.copyWith(
          newReleasesStatus: NewReleasesStatus.error, newReleasesMovies: null);
    }
  }
}
