import 'package:flutter/material.dart';

import 'theme.dart';

class ThemeApp {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: ColorsApp.black,
        titleTextStyle: FontsApp.appBarTxtStyle),
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: ColorsApp.primary,
        ),
    textTheme: FontsApp.textTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: BorderSide(
              width: 1.0, color: ColorsApp.greyLight.withOpacity(0.2)),
          textStyle: FontsApp.outlinedBtnTxtStyle),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 12.0,
          minimumSize: const Size(340, 58),
          maximumSize: const Size(380, 58),
          shadowColor: ColorsApp.primary,
          backgroundColor: ColorsApp.primary,
          shape: const StadiumBorder(),
          textStyle: FontsApp.elevatedBtnTxtStyle),
    ),
  );
}
