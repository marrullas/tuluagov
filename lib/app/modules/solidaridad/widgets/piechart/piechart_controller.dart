import 'package:mobx/mobx.dart';

part 'piechart_controller.g.dart';

class PiechartController = _PiechartControllerBase with _$PiechartController;

abstract class _PiechartControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
