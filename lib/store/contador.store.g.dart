// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContadorStore on _ContatorStore, Store {
  late final _$contatorAtom =
      Atom(name: '_ContatorStore.contator', context: context);

  @override
  int get contator {
    _$contatorAtom.reportRead();
    return super.contator;
  }

  @override
  set contator(int value) {
    _$contatorAtom.reportWrite(value, super.contator, () {
      super.contator = value;
    });
  }

  late final _$_ContatorStoreActionController =
      ActionController(name: '_ContatorStore', context: context);

  @override
  void incrementar() {
    final _$actionInfo = _$_ContatorStoreActionController.startAction(
        name: '_ContatorStore.incrementar');
    try {
      return super.incrementar();
    } finally {
      _$_ContatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contator: ${contator}
    ''';
  }
}
