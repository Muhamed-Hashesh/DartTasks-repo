import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sec_flutter_relearn/buttons_task/buttons.dart';
import 'package:sec_flutter_relearn/learn_APIs/cubit/api_handler_cubit.dart';
import 'package:sec_flutter_relearn/task1_profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (BuildContext context) => CounterCubit(),
      create: (context) => ApiHandlerCubit()..getData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          textTheme:
              GoogleFonts.poorStoryTextTheme(Theme.of(context).textTheme),
        ),
        // home: MyHomePage(),
        // home: LearnCubit(),
        // home: ProfilePage(),
        home: Buttons(),
        // home: OnBoardingScreen(),
        // home: ApiHomeScreen(),
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff333339),
//       drawer: const Drawer(),
//       appBar: AppBar(
//         backgroundColor: const Color(0xff333333),
//         title: const Text('Flutter App'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.more_vert),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//             child: Image.network(
//                 'https://pixlr.com/images/index/product-image-one.webp'),
//           ),
//           const Text(
//             'This is an image',
//             style: TextStyle(fontSize: 24, color: Colors.white),
//           ),
//           const Text(
//             'end of the column here without alignment',
//             style: TextStyle(fontSize: 16, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }
