


import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  _LoginStore(){
    ///Toda vez que o estado de um observable for alterado autorun executa
    autorun((_){
      print("email: $email");
      print("pass: $password");
    });
  }

  @observable
  String email = "";

  @observable
  String password = "";

  ///setar o email e password para receber o valor
  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;
}