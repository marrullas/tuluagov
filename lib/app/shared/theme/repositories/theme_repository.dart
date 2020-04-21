import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuluagov/app/shared/theme/repositories/theme_repository_interface.dart';
import 'package:tuluagov/app/shared/utils/constants.dart';

class ThemeRepository extends Disposable implements IThemeRepository {
  ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.deepPurpleAccent,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFFecf0f1),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  ThemeData get darkTheme => ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent,
        brightness: Brightness.dark,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future<String> getThemeKey() async {
    return (await SharedPreferences.getInstance()).getString(THEMEKEY);
  }

  @override
  Future<void> setThemeKey(Brightness brightness) async {
    (await SharedPreferences.getInstance()).setString(
      THEMEKEY,
      brightness == Brightness.light ? "light" : "dark",
    );
  }

  @override
  Future<ThemeData> getTheme() async {
    final String themeKey = await getThemeKey();

    if (themeKey == null) {
      await setThemeKey(lightTheme.brightness);

      return lightTheme;
    } else {
      return themeKey == "light" ? lightTheme : darkTheme;
    }
  }

  @override
  Future<ThemeData> toggleTheme(ThemeData theme) async {
    if (theme == lightTheme) {
      theme = darkTheme;
    } else {
      theme = lightTheme;
    }

    await setThemeKey(theme.brightness);
    return theme;
  }
}
