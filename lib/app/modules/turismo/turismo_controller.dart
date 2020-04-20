import 'package:mobx/mobx.dart';

part 'turismo_controller.g.dart';

class TurismoController = _TurismoControllerBase with _$TurismoController;

abstract class _TurismoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
