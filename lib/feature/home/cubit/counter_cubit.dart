import 'package:bloc/bloc.dart';
import 'package:firstproject/core/style/color_image.dart';
import 'package:firstproject/core/style/image.dart';
import 'package:firstproject/core/style/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  String image = ImageApp.backGroundImage1;
  String name = StringApp.a;
  Color color = ColorImage.backGrey;
  double i = 0;

  void increment() {
    i++;
    emit(UpdateCount());
  }

  void reset() {
    i = 0;
    emit(UpdateCount());
  }

  changeImage1(){
    image = ImageApp.backGroundImage1;
    color = ColorImage.backGrey;
    emit(UpdateImage());
  }

  changeImage2(){
    image = ImageApp.backGroundImage2;
    color = ColorImage.backPinkAccent;
    emit(UpdateImage());
  }

  changeImage3(){
    image = ImageApp.backGroundImage3;
    color = ColorImage.backBlue;
    emit(UpdateImage());
  }

  changeImage4(){
    image = ImageApp.backGroundImage4;
    color = ColorImage.backTeal;
    emit(UpdateImage());
  }

  changeName1() {
    name = StringApp.a;
    emit(UpdateName());
  }

  changeName2() {
    name = StringApp.b;
    emit(UpdateName());
  }

  changeName3() {
    name = StringApp.c;
    emit(UpdateName());
  }

  changeName4() {
    name = StringApp.d;
    emit(UpdateName());
  }

  changeName5() {
    name = StringApp.e;
    emit(UpdateName());
  }
}


