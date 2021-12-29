


import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  _LoginStore(){
    ///Toda vez que o estado de um observable for alterado autorun executa
    autorun((_){
      print(isFormValid);

      /* //exemplo do uso
      print("email: $email");
      print("pass: $password");*/
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

  ///Computed Serve para combinar stados de observable,
  ///sempre que usarmos computed tem que ter um get
  @computed
  bool get isFormValid => email.length >= 6 && password.length >= 6;
}