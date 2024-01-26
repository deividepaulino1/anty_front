import 'package:anty_front/core/widgets/Button_widgets/button_widgets.dart';
import 'package:anty_front/core/widgets/card_widget/card_widge.dart';
import 'package:anty_front/core/widgets/input_widgets/input_widgets.dart';
import 'package:anty_front/login_module/view/atoms/login_atoms.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/main_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginAtoms = Modular.get<LoginAtoms>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ThemeAnt.antWhite.primaryColor,
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset(
                'assets/images/anty_logo-03.svg',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              CardWidget(width: 500, height: 360, children: [
                const CustomInput(label: 'E-mail'),
                const SizedBox(height: 20),
                const CustomInput(label: 'Senha'),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.black,
                        value: loginAtoms.isChecked.value,
                        onChanged: (value) {
                          loginAtoms.isChecked.setValue(value!);
                          setState(() {});
                        },
                      ),
                      Text('Manter a Sessão')
                    ]),
                const SizedBox(height: 20),
                ButtonWidget(
                  color: ThemeAnt.antWhite.primaryColor,
                  text: 'Conectar',
                  onClicked: () {},
                )
              ])
            ]),
          )),
    );
  }
}
