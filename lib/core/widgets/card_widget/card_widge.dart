// ignore_for_file: public_member_api_docs, sort_constructors_first
//create card widget with 2 input
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final List<Widget> children;
  final double? width;
  final double height;

  const CardWidget({
    Key? key,
    required this.children,
    required this.width,
    required this.height,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width:width ,
        height:height ,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: children,
        ),
      ),
    );
  }

}


