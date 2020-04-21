import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/shared/theme/theme_controller.dart';

class AppWidget extends StatelessWidget {
  //final ThemeController _themeController = ThemeController(Modular.get<IThemeRepository>());
  final ThemeController _themeController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        navigatorKey: Modular.navigatorKey,
        title: 'TuluaGov',
        theme: _themeController.theme,
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
