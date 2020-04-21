import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:tuluagov/app/shared/theme/repositories/theme_repository_interface.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  final IThemeRepository _themeRepository;

  @observable
  ThemeData theme;

  _ThemeControllerBase(this._themeRepository){
    //if(theme.brightness == null)
    getTheme();
  }

  @computed
  bool get isDark => theme.brightness == Brightness.dark;

  @action
  Future<void> getTheme() async{
    theme = _themeRepository.lightTheme;
    theme = await _themeRepository.getTheme();
  }

  @action
  Future<void> toggleTheme() async {
    theme = await _themeRepository.toggleTheme(theme);
  }

  

}
