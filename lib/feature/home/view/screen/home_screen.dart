import 'package:firstproject/core/style/size.dart';
import 'package:firstproject/feature/home/cubit/counter_cubit.dart';
import 'package:firstproject/feature/home/view/widgets/app_bar.dart';
import 'package:firstproject/feature/home/view/widgets/background_image.dart';
import 'package:firstproject/feature/home/view/widgets/buttoncount.dart';
import 'package:firstproject/feature/home/view/widgets/listner.dart';
import 'package:firstproject/feature/home/view/widgets/textcount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: listener(context, CounterState),
        builder: (context, state) {
          CounterCubit cubit = BlocProvider.of(context);
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              appBar: appBar(color: cubit.color, text: cubit.name),
              body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(cubit.image), fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeApp.s50,
                    ),
                    TextCount(text: cubit.i.toInt().toString()),
                    SizedBox(
                      height: SizeApp.s100,
                    ),
                    Row(
                      children: [
                        ButtonCount(
                          onTap: () {
                            cubit.increment();
                          },
                          iconData: Icons.add,
                        ),
                        const Spacer(),
                        ButtonCount(
                          onTap: () {
                            cubit.reset();
                          },
                          iconData: Icons.repeat,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: SizeApp.s70,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: BackGroundImage(
                          cubit: cubit,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
