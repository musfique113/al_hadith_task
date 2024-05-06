import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData lightThemeData(BuildContext context) => _themeData;

  static final ThemeData _themeData = ThemeData(
    scaffoldBackgroundColor: viridian,
    fontFamily: 'Kalpurush',
    colorScheme: ColorScheme.fromSeed(
      seedColor: viridian,
      background: white,
      error: Colors.red,
    ),
    appBarTheme: _appBarTheme,
    dialogTheme: const DialogTheme(
      backgroundColor: white,
      surfaceTintColor: white
    )
  );

  static final AppBarTheme _appBarTheme = AppBarTheme(
      backgroundColor: viridian,
      iconTheme: const IconThemeData(color: white),
      toolbarHeight: 64,
      elevation: 0,
      titleTextStyle: TextStyles.heavy16.copyWith(color: white),
      surfaceTintColor: white,
      centerTitle: false);
}
