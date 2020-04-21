import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IThemeRepository {

  Future<String> getThemeKey();
  Future<void> setThemeKey(Brightness brightness);
  Future<ThemeData> getTheme();
  Future<ThemeData> toggleTheme(ThemeData themeData);
  get lightTheme;
  get darkTheme;
  
}