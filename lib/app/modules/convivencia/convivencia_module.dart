import 'package:tuluagov/app/modules/convivencia/convivencia_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/convivencia/convivencia_page.dart';

class ConvivenciaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConvivenciaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ConvivenciaPage()),
      ];

  static Inject get to => Inject<ConvivenciaModule>.of();
}
