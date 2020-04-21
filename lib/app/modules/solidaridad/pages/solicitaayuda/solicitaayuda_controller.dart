import 'package:mobx/mobx.dart';

part 'solicitaayuda_controller.g.dart';

class SolicitaayudaController = _SolicitaayudaControllerBase
    with _$SolicitaayudaController;

abstract class _SolicitaayudaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
