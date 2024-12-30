import 'package:firstproject/core/style/size.dart';
import 'package:flutter/material.dart';

class CustomWidgetDrawer extends StatelessWidget {
  const CustomWidgetDrawer({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.grey,
        child: Card(
            elevation: SizeApp.s2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: SizeApp.s30, color: Colors.black),
              ),
            )),
      ),
    );
  }
}
