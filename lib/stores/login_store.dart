


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
  bool get isEmailValid => isEmail(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;

  bool isEmail(String em) {
    String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);

    return regExp.hasMatch(em);
  }

}