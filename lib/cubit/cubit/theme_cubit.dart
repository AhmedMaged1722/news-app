import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:news/constants/Global/Theme/Theme%20Data/theme_data_dark.dart';
import 'package:news/constants/Global/Theme/Theme%20Data/theme_data_light.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(getThemedataLight()) {
    _getThemeFromPref();
  }

  Future<void> _saveThemePreference(Brightness brightness) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme', themeIndex);
    debugPrint('Theme saved');
  }

  Future<void> _getThemeFromPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedThemeIndex = prefs.getInt('theme');
    final savedTheme =
        savedThemeIndex == 0 ? getThemedataLight() : getThemedataDark();
    emit(savedTheme);
    debugPrint('Theme success');
  }

  void toggleTheme() {
    final newTheme = state.brightness == Brightness.light
        ? getThemedataDark()
        : getThemedataLight();
    emit(newTheme);
    _saveThemePreference(newTheme.brightness);
    debugPrint('Theme toggled');
  }
}
