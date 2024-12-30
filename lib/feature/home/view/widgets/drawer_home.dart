import 'package:firstproject/core/style/string.dart';
import 'package:firstproject/feature/home/cubit/counter_cubit.dart';
import 'package:firstproject/feature/home/view/widgets/custom_drawer.dart';
import 'package:firstproject/feature/home/view/widgets/image_drawer.dart';
import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key, required this.cubit});
  final CounterCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const ImageWidgetDrawer(),
            CustomWidgetDrawer(
              text: StringApp.a,
              onTap: () {
                cubit.changeName1();
              },
            ),
            CustomWidgetDrawer(
              text: StringApp.b,
              onTap: () {
                cubit.changeName2();
              },
            ),
            CustomWidgetDrawer(
              text: StringApp.c,
              onTap: () {
                cubit.changeName3();
              },
            ),
            CustomWidgetDrawer(
              text: StringApp.d,
              onTap: () {
                cubit.changeName4();
              },
            ),
            CustomWidgetDrawer(
              text: StringApp.e,
              onTap: () {
                cubit.changeName5();
              },
            ),
          ],
        ));
  }
}
