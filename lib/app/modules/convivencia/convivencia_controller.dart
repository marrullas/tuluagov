import 'package:mobx/mobx.dart';

part 'convivencia_controller.g.dart';

class ConvivenciaController = _ConvivenciaControllerBase
    with _$ConvivenciaController;

abstract class _ConvivenciaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
