import 'package:anty_front/core/themes/main_theme.dart';
import 'package:flutter/material.dart';

// create button widget with custom color and text
class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: ThemeAnt.antWhite.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
        ),
        child: Text(
          text,
          style: ThemeAnt.antWhite.textTheme.headlineMedium!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: onClicked,
      );
}
