import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class SeeAllMoviesScreen extends StatelessWidget {
  const SeeAllMoviesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          args['title'],
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(fontSize: 18),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: ListBigPosterVertical(
        movies: args['movies'],
      ),
    );
  }
}
