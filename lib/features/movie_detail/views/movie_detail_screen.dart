import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/core.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../domain/domain.dart';
import '../../trailer_video/trailer_video.dart';
import '../movie_detail.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
            stretch: true,
            backgroundColor: ColorsApp.primaryDark,
            elevation: 0.0,
            foregroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.screen_share_outlined,
                    color: Colors.white,
                  ))
            ],
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(150.0),
                child: Container()),
            flexibleSpace: FlexibleSpaceBar(
              background: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  child: CachedNetworkImage(
                    imageUrl: movie.backdropPath?.imgUrl ?? '',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Image.asset(
                      AssetLocation.placeholder,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      AssetLocation.placeholder,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )),
            )),
        SliverToBoxAdapter(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              movie.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontSize: 18),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 15),
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () async {},
                              icon: const Icon(Icons.bookmark_outline)),
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(Icons.send_outlined)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.star_half_rounded,
                            color: ColorsApp.primary,
                          ),
                          Text(
                            '${movie.voteAverage}',
                            style: const TextStyle(color: ColorsApp.primary),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            color: ColorsApp.primary,
                          ),
                          Text(
                            '${movie.releaseDate?.substring(0, 4)}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(
                                    SizeConfig.getProportionateScreenWidth(
                                        screenWidth: size.width,
                                        inputWidth: 80),
                                    SizeConfig.getProportionateScreenHeight(
                                        screenHeight: size.height,
                                        inputHeight: 45)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                side: const BorderSide(
                                    width: 2.0, color: ColorsApp.primary),
                              ),
                              onPressed: () {},
                              child: (movie.adult == false)
                                  ? const Text('+12')
                                  : const Text('+18')),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(
                                    SizeConfig.getProportionateScreenWidth(
                                        screenWidth: size.width,
                                        inputWidth: 80),
                                    SizeConfig.getProportionateScreenHeight(
                                        screenHeight: size.height,
                                        inputHeight: 45)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                side: const BorderSide(
                                    width: 2.0, color: ColorsApp.primary),
                              ),
                              onPressed: () {},
                              child:
                                  Text(movie.originalLanguage.toUpperCase())),
                        ],
                      ),
                      const SizedBox(height: 10),
                      _PlayAndDownload(size: size, movie: movie),
                      const SizedBox(height: 10),
                      _MovieGenres(movieID: movie.id),
                      const SizedBox(height: 10),
                      ExpandableText(
                        movie.overview,
                        expandText: AppLocalizations.of(context)!.viewMore,
                        collapseText: AppLocalizations.of(context)!.showLess,
                        textAlign: TextAlign.justify,
                        linkColor: ColorsApp.primary,
                        maxLines: 3,
                        style: const TextStyle(color: ColorsApp.grey),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: _Casting(
                    movieID: movie.id,
                  ),
                ),
                DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TabBar(
                              indicatorColor: ColorsApp.primary,
                              labelColor: ColorsApp.primary,
                              unselectedLabelColor: ColorsApp.greyLight,
                              // padding: EdgeInsets.only(bottom: 15),
                              tabs: [
                                Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text((AppLocalizations.of(context)!
                                        .trailers))),
                                Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(AppLocalizations.of(context)!
                                        .moreLikeThis)),
                                Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(AppLocalizations.of(context)!
                                        .comments)),
                              ]),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                          child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                TrailerVideo(
                                  movieID: movie.id,
                                  isFullScreen: false,
                                ),
                                _SimilarMovies(movieID: movie.id),
                                const _Comments()
                              ]),
                        )
                      ],
                    ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class _PlayAndDownload extends StatelessWidget {
  const _PlayAndDownload({
    required this.size,
    required this.movie,
  });

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final bool isTablet = size.shortestSide > 600;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              minimumSize: isTablet
                  ? null
                  : Size(
                      SizeConfig.getProportionateScreenWidth(
                          screenWidth: size.width, inputWidth: 184),
                      SizeConfig.getProportionateScreenHeight(
                          screenHeight: size.height, inputHeight: 60)),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TrailerVideo(movieID: movie.id)));
            },
            icon: const Icon(
              Icons.play_circle_fill_outlined,
              color: Colors.white,
            ),
            label: Text(
              AppLocalizations.of(context)!.play,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: Colors.white,
                // fixedSize: const Size(150, 45),
                minimumSize: isTablet
                    ? null
                    : Size(
                        SizeConfig.getProportionateScreenWidth(
                            screenWidth: size.width, inputWidth: 184),
                        SizeConfig.getProportionateScreenHeight(
                            screenHeight: size.height, inputHeight: 60)),
                side: const BorderSide(
                  width: 3.0,
                  color: ColorsApp.primary,
                )),
            onPressed: () async {},
            icon: const Icon(
              Icons.download,
              color: ColorsApp.primary,
            ),
            label: Text(
              AppLocalizations.of(context)!.download,
              style: const TextStyle(color: ColorsApp.primary, fontSize: 16),
            ))
      ],
    );
  }
}

class _MovieGenres extends ConsumerWidget {
  const _MovieGenres({required this.movieID});
  final int movieID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(movieNotifierProvider.notifier).getMovieGenres(
          movieID: movieID,
          language: Localizations.localeOf(context).languageCode),
      builder: (BuildContext context, AsyncSnapshot<List<Genre>?> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return SizedBox(
              height: 20,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  String genre = snapshot.data![index].name;
                  String fullGenre = snapshot.data!.length == index + 1
                      ? '$genre.'
                      : '$genre, ';

                  return Text(
                    "${AppLocalizations.of(context)!.genre}: $fullGenre",
                  );
                },
              ),
            );
          } else {
            return Text(
              AppLocalizations.of(context)!.error,
              style:
                  const TextStyle(fontSize: 11.0, fontWeight: FontWeight.w400),
            );
          }
        } else {
          return Text(
            AppLocalizations.of(context)!.loading,
            style: const TextStyle(fontSize: 11.0, fontWeight: FontWeight.w400),
          );
        }
      },
    );
  }
}

class _Casting extends ConsumerWidget {
  const _Casting({
    required this.movieID,
  });

  final int movieID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(movieDetailNotifierProvider.notifier).getMovieCast(
          movieID: movieID,
          language: Localizations.localeOf(context).languageCode),
      builder: (BuildContext context, AsyncSnapshot<List<Cast>?> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData && snapshot.data != null) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                final cast = snapshot.data![index];

                return SizedBox(
                  height: 100,
                  width: 200,
                  child: ListTile(
                    leading: SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(36)),
                        child: CachedNetworkImage(
                          imageUrl: cast.profilePath?.imgUrl ?? '',
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Image.asset(
                              AssetLocation.placeholder,
                              fit: BoxFit.cover),
                          errorWidget: (context, url, error) => Image.asset(
                              AssetLocation.placeholder,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    title: Text(
                      cast.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      cast.knownForDepartment,
                      style: const TextStyle(
                          color: ColorsApp.greyLight, fontSize: 14),
                    ),
                  ),
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class _SimilarMovies extends ConsumerWidget {
  const _SimilarMovies({required this.movieID});
  final int movieID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(movieDetailNotifierProvider.notifier).getSimilarMovies(
          movieID: movieID,
          language: Localizations.localeOf(context).languageCode),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return ListBigPosterVertical(
              movies: snapshot.data,
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class _Comments extends ConsumerWidget {
  const _Comments();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(movieDetailNotifierProvider.notifier).getUsersComments(),
      builder: (BuildContext context, AsyncSnapshot<List<User>?> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!
                            .nComments(snapshot.data!.length),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            AppLocalizations.of(context)!.seeAll,
                            style: const TextStyle(
                                color: ColorsApp.primary,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.2),
                          ))
                    ],
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Comment(user: snapshot.data![index]);
                  },
                ))
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
