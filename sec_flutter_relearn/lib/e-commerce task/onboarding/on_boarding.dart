import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: const Color(0xffFFA451),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/onboarding.png'),
              ],
            ),
          ),
          const Text(
            'Get The Freshest Fruit Salad Combo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
