import 'package:tuluagov/app/modules/solidaridad/pages/estadistica/estadistica_controller.dart';
import 'package:tuluagov/app/modules/solidaridad/solidaridad_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/solidaridad/solidaridad_page.dart';
import 'package:tuluagov/app/modules/solidaridad/widgets/piechart/piechart_controller.dart';

import 'pages/estadistica/estadistica_page.dart';

class SolidaridadModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PiechartController()),
        Bind((i) => EstadisticaController()),
        Bind((i) => SolidaridadController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SolidaridadPage()),
        Router('/estadistica', child:(_,args) => EstadisticaPage()),
      ];

  static Inject get to => Inject<SolidaridadModule>.of();
}
