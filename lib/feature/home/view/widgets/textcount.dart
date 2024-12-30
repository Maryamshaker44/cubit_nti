import 'package:firstproject/core/style/size.dart';
import 'package:flutter/material.dart';

class TextCount extends StatelessWidget {
  const TextCount({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: SizeApp.s100,
      child: Text(
        text,
        style: const TextStyle(color: Colors.indigo, fontSize: SizeApp.s30),
      ),
    );
  }
}
