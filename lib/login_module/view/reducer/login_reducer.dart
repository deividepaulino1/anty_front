import 'package:anty_front/login_module/view/atoms/login_atoms.dart';
import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginReducer extends Reducer {
  //necessario instancia do atomo
  final loginAtoms = Modular.get<LoginAtoms>();

  LoginReducer() {
    /// on(() => [atom aqui], _metodoAqui);

    on(() => [loginAtoms.doLogin], _doLogin);
  }

  // void _metodoAqui(){}

  void _doLogin() async {}
}
