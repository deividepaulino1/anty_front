import 'package:anty_front/core/themes/main_theme.dart';
import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return RxBuilder(
      builder: (_) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'anty',
        themeMode: ThemeMode.light,
        theme: ThemeAnt.antWhite,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    ); //added by extension
  }
}
