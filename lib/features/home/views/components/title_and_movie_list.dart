import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/core.dart';
import '../../../../domain/entities/entities.dart';
import '../../../widgets/list_big_poster_vertical.dart';

class TitleAndMovieList extends StatelessWidget {
  const TitleAndMovieList({
    super.key,
    required this.title,
    required this.movieList,
    this.height = 290,
  });

  final String title;
  final List<Movie>? movieList;
  final double height;

  void _seeAll(
    BuildContext context,
  ) {
    Navigator.pushNamed(context, RoutesApp.seeAllMovies,
        arguments: {'title': title, 'movies': movieList});
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _TitleAndSeeAll(
                title: title,
                onTap: (movieList == null) ? null : () => _seeAll(context),
              ),
            ),
            Expanded(child: _MovieList(movies: movieList)),
          ],
        ),
      ),
    );
  }
}

class _MovieList extends StatelessWidget {
  const _MovieList({super.key, this.movies});
  final List<Movie>? movies;

  @override
  Widget build(BuildContext context) {
    if (movies == null) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 15),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: 150,
            // height: height,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
          );
        },
      );
    }
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 15),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return BigPosterVertical(
          movie: movies![index],
        );
      },
    );
  }
}

class _TitleAndSeeAll extends StatelessWidget {
  const _TitleAndSeeAll({super.key, required this.title, this.onTap});
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Text(
            title,
            maxLines: 2,
            style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 0.2),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppLocalizations.of(context)!.seeAll,
            style: const TextStyle(
                color: ColorsApp.primary, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
