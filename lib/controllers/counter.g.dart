// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _CounterBase, Store {
  final _$counterAtom = Atom(name: '_CounterBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$_CounterBaseActionController = ActionController(name: '_CounterBase');

  @override
  dynamic incrementar() {
    final _$actionInfo = _$_CounterBaseActionController.startAction();
    try {
      return super.incrementar();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementar() {
    final _$actionInfo = _$_CounterBaseActionController.startAction();
    try {
      return super.decrementar();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'counter: ${counter.toString()}';
    return '{$string}';
  }
}
