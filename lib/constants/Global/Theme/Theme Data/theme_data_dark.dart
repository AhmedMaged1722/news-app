import 'package:flutter/material.dart';
import 'package:news/constants/Global/Theme/App%20color/app_color_dark.dart';
import 'package:news/constants/color.dart';

ThemeData getThemedataDark() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColorBlack.scaffoldBackGroundColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: kColor1,
      ),
      titleTextStyle: TextStyle(
        color: kColor1,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      shadowColor: AppColorBlack.appBarBackGroundColor,
      backgroundColor: AppColorBlack.appBarBackGroundColor,
      surfaceTintColor: AppColorBlack.appBarBackGroundColor,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColorBlack.bottomAppBarBackGroundColor,
      selectedItemColor: kWhite,
      unselectedItemColor: kWhite,
      type: BottomNavigationBarType.fixed,
      elevation: 2,
      selectedLabelStyle: TextStyle(
        fontSize: 16,
      ),
    ),
    // dividerColor: AppColorBlack.dividerBColor,
    dividerTheme: const DividerThemeData(
      color: AppColorBlack.dividerBColor,
      thickness: 1,
    ),
  );
}
