import 'package:firstproject/core/style/size.dart';
import 'package:flutter/material.dart';


class Backimg extends StatelessWidget {
  const Backimg({super.key, required this.onTap, required this.image});

  final Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: SizeApp.s30,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}