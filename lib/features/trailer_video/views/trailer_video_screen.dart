import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../core/core.dart';

class TrailerVideo extends ConsumerStatefulWidget {
  const TrailerVideo({
    required this.movieID,
    this.isFullScreen = true,
    super.key,
  });

  final int movieID;
  final bool isFullScreen;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrailerVideoState();
}

class _TrailerVideoState extends ConsumerState<TrailerVideo> {
  YoutubePlayerController? _controller;
  String? _videoKey;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.microtask(() => {fetchVideoKey()});
  }

  Future<void> fetchVideoKey() async {
    final resp = await ref.read(movieNotifierProvider.notifier).getVideoKey(
        movieID: widget.movieID,
        language: Localizations.localeOf(context).languageCode);

    if (resp == null) {
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _videoKey = resp;
        _controller = YoutubePlayerController.fromVideoId(
          videoId: resp,
          autoPlay: false,
          params: const YoutubePlayerParams(
              showFullscreenButton: true, color: 'red'),
        );
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Builder(
        builder: (context) {
          if (_isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (_videoKey == null) {
            final titleTextStyle = Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: ColorsApp.primary);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  const Icon(
                    Icons.movie_outlined,
                    size: 100,
                    color: ColorsApp.grey,
                  ),
                  Text(
                    AppLocalizations.of(context)!.noTrailer,
                    style: titleTextStyle,
                  )
                ],
              ),
            );
          } else {
            return widget.isFullScreen == false
                ? YoutubePlayer(
                    controller: _controller!,
                    backgroundColor: ColorsApp.black,
                    aspectRatio: 4 / 3,
                  )
                : YoutubePlayerScaffold(
                    backgroundColor: ColorsApp.black,
                    controller: _controller!,
                    builder: (context, player) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          player,
                          YoutubePlayerControllerProvider(
                            controller: _controller!,
                            child: Builder(
                              builder: (context) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(YoutubePlayerControllerProvider.of(
                                            context)
                                        .metadata
                                        .title),
                                    Text(YoutubePlayerControllerProvider.of(
                                            context)
                                        .metadata
                                        .author)
                                  ],
                                );
                                // or `controller.ytController`.
                              },
                            ),
                          )
                        ],
                      );
                    },
                  );
          }
        },
      ),
    ));
  }
}
