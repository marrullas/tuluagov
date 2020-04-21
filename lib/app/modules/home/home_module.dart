import 'package:tuluagov/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/home/home_page.dart';
import 'package:tuluagov/app/shared/theme/repositories/theme_repository.dart';
import 'package:tuluagov/app/shared/theme/theme_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        //Bind((i) => ThemeController(i.get<ThemeRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
