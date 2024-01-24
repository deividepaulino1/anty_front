import 'package:anty_front/login_module/controller/login_controller.dart';
import 'package:anty_front/login_module/view/atoms/login_atoms.dart';
import 'package:anty_front/login_module/view/pages/login_page.dart';
import 'package:anty_front/login_module/view/reducer/login_reducer.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    //injeção de dependencia do controller
    Bind((i) => LoginController()),

    //injeção de dependencia do atomo
    Bind((i) => LoginAtoms()),

    //injeção de dependencia das regras de negócio
    Bind((i) => LoginReducer()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}
