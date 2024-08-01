import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../core.dart';

class MovaMoviesApp extends StatelessWidget {
  const MovaMoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mova Movies',
      initialRoute: RoutesApp.initialRoute,
      routes: RoutesApp.routes,
      theme: ThemeApp.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
