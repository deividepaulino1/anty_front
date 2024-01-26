import 'package:anty_front/login_module/view/states/login_state.dart';
import 'package:asp/asp.dart';

class LoginAtoms {
  final loginState = Atom<LoginState>(LoginInitial());
  final isChecked = Atom<bool>(false);

  final doLogin = Atom.action();

  void dispose() {
    loginState.dispose();
  }
}
