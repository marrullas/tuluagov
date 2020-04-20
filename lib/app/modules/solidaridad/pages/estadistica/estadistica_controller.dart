import 'package:mobx/mobx.dart';

part 'estadistica_controller.g.dart';

class EstadisticaController = _EstadisticaControllerBase
    with _$EstadisticaController;

abstract class _EstadisticaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
