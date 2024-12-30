import 'package:firstproject/core/style/text.dart';
import 'package:flutter/material.dart';

AppBar appBar({required Color color, required String text}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: color,
    title: Text(style: white25W800, text),
    centerTitle: true,
  );
}
