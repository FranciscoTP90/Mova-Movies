import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/theme/colors_app.dart';
import '../../../core/utils/asset_location.dart';
import '../../../domain/entities/user.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: SizedBox(
            width: 60,
            height: 60,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(36)),
                child: CachedNetworkImage(
                  imageUrl: user.photo,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      Image.asset(AssetLocation.placeholder, fit: BoxFit.cover),
                  errorWidget: (context, url, error) =>
                      Image.asset(AssetLocation.placeholder, fit: BoxFit.cover),
                )),
          ),
          title: Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.more),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Text(
            user.body,
            textAlign: TextAlign.justify,
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: ColorsApp.primary,
                )),
            const Text('938', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(width: 30),
            Text(
              AppLocalizations.of(context)!.daysAgo,
              style: const TextStyle(
                  color: ColorsApp.greyLight, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 30),
            Text(
              AppLocalizations.of(context)!.reply,
              style: const TextStyle(
                  color: ColorsApp.greyLight, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
