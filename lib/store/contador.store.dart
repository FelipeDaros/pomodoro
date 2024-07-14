import 'package:mobx/mobx.dart';

part 'contador.store.g.dart';

class ContadorStore = _ContatorStore with _$ContadorStore;

abstract class _ContatorStore with Store {
  @observable
  int contator = 0;

  @action
  void incrementar() {
    contator++;
  }
}
