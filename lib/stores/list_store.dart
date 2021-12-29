


import 'package:mobx/mobx.dart';
part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {

  @observable
  String _newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => _newTodoTitle = value;

  @computed
  bool get titleValid => _newTodoTitle.isNotEmpty;

  /*
  //no caso de lista utilizar o ObservableList<T>
  @observable
  List<String> todoList = [];*/
  ///Essa lista é observavel se mudar algo internamente ela sabe que mudou e notifica os observadores
  ObservableList<String> todoList = ObservableList<String>();

  @action
  void addTodo(){
    todoList.add(_newTodoTitle);
  }

}