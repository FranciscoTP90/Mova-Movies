import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/routes/routes.dart';
import '../../core/theme/colors_app.dart';
import '../../core/utils/asset_location.dart';
import '../../core/utils/extensions.dart';
import '../../domain/entities/movie.dart';

class ListBigPosterVertical extends StatelessWidget {
  const ListBigPosterVertical({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 0.0,
            childAspectRatio: 0.7),
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return BigPosterVertical(
            movie: movies[index],
          );
        },
      ),
    );
  }
}

class BigPosterVertical extends StatelessWidget {
  const BigPosterVertical({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutesApp.movieDetail, arguments: movie);
      },
      child: Container(
        height: 190,
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: ColorsApp.primary,
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            _PosterPath(movie.posterPath),
            Positioned(
              top: 10.0,
              left: 10,
              child: Container(
                width: 45,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorsApp.primary,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  movie.voteAverage.toStringAsFixed(1),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PosterPath extends StatelessWidget {
  final String? img;
  const _PosterPath(this.img);

  @override
  Widget build(BuildContext context) {
    if (img == null) {
      return Image.asset(
        AssetLocation.placeholder,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      );
    } else {
      return CachedNetworkImage(
        imageUrl: img!.imgUrl,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            Image.asset(AssetLocation.placeholder, fit: BoxFit.cover),
        errorWidget: (context, url, error) =>
            Image.asset(AssetLocation.placeholder, fit: BoxFit.cover),
      );
    }
  }
}
