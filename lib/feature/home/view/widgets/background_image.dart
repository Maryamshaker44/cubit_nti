import 'package:firstproject/core/style/image.dart';
import 'package:firstproject/feature/home/cubit/counter_cubit.dart';
import 'package:firstproject/feature/home/view/widgets/bimg.dart';
import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({super.key, required this.cubit});
  final CounterCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Backimg(
          image: ImageApp.backGroundImage4,
          onTap: () {
            cubit.changeImage4();
          },
        ),
        Backimg(
          image: ImageApp.backGroundImage3,
          onTap: () {
            cubit.changeImage3();
          },
        ),
        Backimg(
          image: ImageApp.backGroundImage2,
          onTap: () {
            cubit.changeImage2();
          },
        ),
        Backimg(
          image: ImageApp.backGroundImage1,
          onTap: () {
            cubit.changeImage1();
          },
        ),
      ],
    );
  }
}
