// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  const CustomInput({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinha os widgets filhos à esquerda
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0), // Adiciona um espaço entre o texto e o TextField
        const TextField(
          textAlign: TextAlign.left, // Alinha o texto dentro do TextField à esquerda
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
