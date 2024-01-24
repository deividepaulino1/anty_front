import 'package:anty_front/login_module/view/states/login_state.dart';
import 'package:asp/asp.dart';

class LoginAtoms {
  final loginState = Atom<LoginState>(LoginInitial());

  void dispose() {
    loginState.dispose();
  }
}
