import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova_movies/core/core.dart';
import 'package:mova_movies/features/trailer_video/views/trailer_video_screen.dart';
import '../../../../domain/entities/entities.dart';
import '../../logic/home_provider.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
    required this.expandedHeight,
    this.movie,
  });
  final double expandedHeight;
  final Movie? movie;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      pinned: true,
      backgroundColor: ColorsApp.primaryDark,
      expandedHeight: expandedHeight,
      leading: Image.asset(AssetLocation.movaIcon),
      actions: const [
        _SearchBtn(),
        _NotificationBtn(),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: _BackroundImage(imageUrl: movie?.posterPath?.imgUrl ?? ''),
        titlePadding: const EdgeInsets.only(top: 100, left: 20),
        title: ListView(
          shrinkWrap: true,
          children: [
            _MovieTitle(
              title: movie?.title,
            ),
            const SizedBox(height: 5.0),
            const _MovieGenres(),
            _PlayAndList(id: movie?.id)
          ],
        ),
      ),
    );
  }
}

class _PlayAndList extends StatelessWidget {
  const _PlayAndList({this.id});
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              backgroundColor: ColorsApp.primary,
              minimumSize: const Size(80, 30),
              maximumSize: const Size(115, 40)),
          onPressed: (id == null)
              ? null
              : () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrailerVideo(movieID: id!),
                    ),
                  );
                },
          icon: const Icon(
            Icons.play_circle,
            color: Colors.white,
            size: 14,
          ),
          label: FittedBox(
            child: Text(
              AppLocalizations.of(context)!.play,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              minimumSize: const Size(80, 30),
              maximumSize: const Size(100, 40),
              side: const BorderSide(width: 2.0, color: Colors.white),
            ),
            onPressed: (id == null) ? null : () {},
            icon: const Icon(
              Icons.add,
              size: 14,
              color: Colors.white,
            ),
            label: FittedBox(
              child: Text(AppLocalizations.of(context)!.myList,
                  style: const TextStyle(color: Colors.white, fontSize: 12)),
            ))
      ],
    );
  }
}

class _MovieTitle extends StatelessWidget {
  const _MovieTitle({this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    if (title == null) {
      return Text(
        AppLocalizations.of(context)!.loading,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      );
    }

    return Text(
      title!,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _BackroundImage extends StatelessWidget {
  const _BackroundImage({required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        placeholder: (context, url) => const _PlaceholderImg(),
        errorWidget: (context, url, error) => const _PlaceholderImg(),
      ),
    );
  }
}

class _PlaceholderImg extends StatelessWidget {
  const _PlaceholderImg();

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetLocation.placeholder, fit: BoxFit.cover);
  }
}

class _NotificationBtn extends StatelessWidget {
  const _NotificationBtn();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.notifications_none_outlined,
        color: Colors.white,
      ),
    );
  }
}

class _SearchBtn extends StatelessWidget {
  const _SearchBtn();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search_rounded,
          color: Colors.white,
        ));
  }
}

class _MovieGenres extends ConsumerWidget {
  const _MovieGenres();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstMovie = ref.watch(homeNotifierProvider).firstMovie;
    if (firstMovie == null) {
      return const SizedBox.shrink();
    }

    return FutureBuilder(
      future: ref.read(movieNotifierProvider.notifier).getMovieGenres(
          movieID: firstMovie.id,
          language: Localizations.localeOf(context).languageCode),
      builder: (BuildContext context, AsyncSnapshot<List<Genre>?> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return SizedBox(
              height: 12,
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
                    fullGenre,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  );
                },
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return Text(
            AppLocalizations.of(context)!.loading,
            style: const TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          );
        }
      },
    );
  }
}
