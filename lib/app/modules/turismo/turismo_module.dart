import 'package:tuluagov/app/modules/turismo/turismo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/turismo/turismo_page.dart';

class TurismoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TurismoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TurismoPage()),
      ];

  static Inject get to => Inject<TurismoModule>.of();
}
