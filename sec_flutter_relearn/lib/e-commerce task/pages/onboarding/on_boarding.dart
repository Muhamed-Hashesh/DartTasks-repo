import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/e-commerce%20task/auth_name/name_page.dart';
import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            color: const Color(0xffFFA451),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/onboarding.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get The Freshest Fruit Salad Combo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  // textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthNamePage(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
