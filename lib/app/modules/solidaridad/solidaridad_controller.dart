import 'package:mobx/mobx.dart';

part 'solidaridad_controller.g.dart';

class SolidaridadController = _SolidaridadControllerBase
    with _$SolidaridadController;

abstract class _SolidaridadControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
