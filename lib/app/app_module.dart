import 'package:tuluagov/app/shared/theme/repositories/theme_repository_interface.dart';
import 'package:tuluagov/app/shared/theme/theme_controller.dart';
import 'package:tuluagov/app/shared/theme/repositories/theme_repository.dart';
import 'package:dio/dio.dart';
import 'package:tuluagov/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:tuluagov/app/app_widget.dart';
import 'package:tuluagov/app/modules/home/home_module.dart';
import 'package:tuluagov/app/modules/login/login_module.dart';
import 'package:tuluagov/app/modules/news/news_module.dart';
import 'package:tuluagov/app/shared/auth/auth_controller.dart';
import 'package:tuluagov/app/shared/auth/repositories/auth_repository.dart';
import 'package:tuluagov/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:tuluagov/app/splash/splash_page.dart';

import 'modules/convivencia/convivencia_module.dart';
import 'modules/solidaridad/solidaridad_module.dart';
import 'modules/turismo/turismo_module.dart';
import 'modules/todo/todo_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [        
        Bind((i) => ThemeController(ThemeRepository())),
        Bind((i) => Dio()),
        Bind((i) => AppController()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
        Router('/news', module: NewsModule()),
        Router('/todo', module: TodoModule()),
        Router('/convivencia', module: ConvivenciaModule()),
        Router('/solidaridad', module: SolidaridadModule()),
        Router('/turismo', module: TurismoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
