import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova_movies/features/home/views/components/main_header.dart';
import '../../features.dart';
import '../../../core/core.dart';

import '../../../domain/domain.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/title_and_movie_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    getHomeData(context);
    super.didChangeDependencies();
  }

  void getHomeData(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    Future.microtask(() {
      ref
          .read(homeNotifierProvider.notifier)
          .getTopMovies(page: 1, language: myLocale.languageCode);
      ref
          .read(homeNotifierProvider.notifier)
          .getNewReleasesMovies(page: 1, language: myLocale.languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;
    final movie = ref.watch(homeNotifierProvider).firstMovie;
    final List<Movie>? movies =
        ref.watch(homeNotifierProvider).topMovies?.movies;
    final List<Movie>? newMovies =
        ref.watch(homeNotifierProvider).newReleasesMovies?.movies;
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          getHomeData(context);
        },
        child: CustomScrollView(
          slivers: [
            MainHeader(
              expandedHeight: sizeScreen.height * 0.35,
              movie: movie,
            ),
            TitleAndMovieList(
                title: AppLocalizations.of(context)!.topMovies,
                movieList: movies),
            TitleAndMovieList(
              title: AppLocalizations.of(context)!.newReleases,
              movieList: newMovies,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 8.0),
            )
          ],
        ),
      ),
    );
  }
}
