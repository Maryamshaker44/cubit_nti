import 'package:firstproject/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/block/block-observer.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}
