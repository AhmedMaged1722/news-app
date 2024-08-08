import 'package:flutter/material.dart';
import 'package:news/constants/Global/Theme/App%20color/app_color_light.dart';
import 'package:news/constants/color.dart';

ThemeData getThemedataLight() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColorLight.scaffoldBackGroundColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: kColor4,
      ),
      titleTextStyle: TextStyle(
        color: kColor4,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      shadowColor: AppColorLight.appBarBackGroundColor,
      backgroundColor: AppColorLight.appBarBackGroundColor,
      surfaceTintColor: AppColorLight.appBarBackGroundColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColorLight.bottomAppBarBackGroundColor,
      selectedItemColor: AppColorLight.fixedItemColor,
      unselectedItemColor: AppColorLight.unselectedItemColor,
      type: BottomNavigationBarType.fixed,
      elevation: 2,
      selectedLabelStyle: TextStyle(
        fontSize: 16,
      ),
    ),
    // dividerColor: AppColorLight.dividerColor,
    dividerTheme: const DividerThemeData(
      color: AppColorLight.dividerColor,
      thickness: 1,
    ),
    iconTheme: const IconThemeData(
      color: kColor4,
    ),
  );
}
