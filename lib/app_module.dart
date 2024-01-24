import 'package:anty_front/login_module/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        // CoreModule(),
      ];

  @override
  List<Bind> get binds => [
        // Bind((i) => DjScaffoldMessage()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: LoginModule(),
        ),
      ];
}
