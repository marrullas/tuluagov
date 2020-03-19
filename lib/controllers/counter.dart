

import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store{
@observable
int counter = 0;

@action
incrementar(){
  counter++;
}

@action
decrementar(){
  counter--;
}

}