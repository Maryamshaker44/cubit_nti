import 'package:firstproject/core/style/size.dart';
import 'package:flutter/material.dart';

class ImageWidgetDrawer extends StatelessWidget {
  const ImageWidgetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: SizeApp.s100,
      backgroundImage: NetworkImage(
        "https://cdn.salla.sa/yaWVp/7702ef10-4919-402d-a0ad-3223edf08b91-1000x1000-JvDHAqX4s7Lz3p6TRXWL3ucJuOmCDu0s79LwFIkz.jpg",
      ),
    );
  }
}
