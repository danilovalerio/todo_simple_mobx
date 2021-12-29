

import 'package:mobx/mobx.dart';

part 'tarefa_store.g.dart';

class TarefaStore = _TarefaStore with _$TarefaStore;

abstract class _TarefaStore with Store {

  _TarefaStore(this.title);

  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;

}
