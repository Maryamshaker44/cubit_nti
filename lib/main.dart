import 'package:firstproject/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/block/block-observer.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int i = 0;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterCubit(),
//       child: BlocConsumer<CounterCubit, CounterState>(
//         listener: (context, state){
//           if(state is CounterUpdates){
//             showDialog(context: context, builder: (context){
//               return AlertDialog(content: Text("Update"),);
//             });
//           }
//         },
//         builder: (context, state) {
//           CounterCubit cubit = BlocProvider.of(context);
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             home: Scaffold(
//               appBar: AppBar(
//                 title: const Text("Counter App"),
//                 backgroundColor: Colors.blueAccent,
//                 titleTextStyle: const TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//               body: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Counter ",
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       '${cubit.i.toString()}',
//                       style: const TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     IconButton(
//                       onPressed: (){
//                         cubit.increment();
//                       },
//                       icon: const Icon(
//                         Icons.add,
//                         size: 25,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     IconButton(
//                         onPressed: (){
//                           cubit.decrement();
//                         },
//                         icon: const Icon(
//                           Icons.remove,
//                           size: 25,
//                         )),
//                     const SizedBox(height: 20),
//                     IconButton(
//                         onPressed: (){
//                           cubit.reset();
//                         },
//                         icon: const Icon(
//                           Icons.repeat,
//                           size: 25,
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
