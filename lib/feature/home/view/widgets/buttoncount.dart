import 'package:firstproject/core/style/size.dart';
import 'package:flutter/material.dart';

class ButtonCount extends StatelessWidget {
  const ButtonCount({super.key, this.onTap, required this.iconData});

  final void Function()? onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: SizeApp.s50,
        child: Icon(
          iconData,
          size: SizeApp.s40,
        ),
      ),
    );
  }
}