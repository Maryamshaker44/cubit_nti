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
          image: ImageApp.Image4,
          onTap: () {
            cubit.changeImage4();
            cubit.changeName2();
          },
        ),
        Backimg(
          image: ImageApp.Image3,
          onTap: () {
            cubit.changeImage3();
            cubit.changeName3();
          },
        ),
        Backimg(
          image: ImageApp.Image2,
          onTap: () {
            cubit.changeImage2();
            cubit.changeName4();
          },
        ),
        Backimg(
          image: ImageApp.Image1,
          onTap: () {
            cubit.changeImage1();
            cubit.changeName5();
          },
        ),
      ],
    );
  }
}
