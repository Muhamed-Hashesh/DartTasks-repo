import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/e-commerce%20task/widgets/custom_button.dart';

class AuthNameBage extends StatelessWidget {
  const AuthNameBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            const Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  TextField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      fillColor: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomButton(
                    label: 'Start Ordering',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
