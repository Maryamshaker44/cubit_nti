import 'package:firstproject/feature/home/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

listener(context, state) {
  return (context, state) {
    if (state is UpdateImage) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.white,
          content: Center(
              child: Text(
            " تم تحديث  ",
            style: TextStyle(color: Colors.black),
          ))));
    }
  };
}
