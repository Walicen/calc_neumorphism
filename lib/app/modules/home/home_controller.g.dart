// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$inputsAtom = Atom(name: '_HomeBase.inputs');

  @override
  String get inputs {
    _$inputsAtom.context.enforceReadPolicy(_$inputsAtom);
    _$inputsAtom.reportObserved();
    return super.inputs;
  }

  @override
  set inputs(String value) {
    _$inputsAtom.context.conditionallyRunInAction(() {
      super.inputs = value;
      _$inputsAtom.reportChanged();
    }, _$inputsAtom, name: '${_$inputsAtom.name}_set');
  }

  final _$operationAtom = Atom(name: '_HomeBase.operation');

  @override
  String get operation {
    _$operationAtom.context.enforceReadPolicy(_$operationAtom);
    _$operationAtom.reportObserved();
    return super.operation;
  }

  @override
  set operation(String value) {
    _$operationAtom.context.conditionallyRunInAction(() {
      super.operation = value;
      _$operationAtom.reportChanged();
    }, _$operationAtom, name: '${_$operationAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void add(String value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.add(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic result() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.result();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
