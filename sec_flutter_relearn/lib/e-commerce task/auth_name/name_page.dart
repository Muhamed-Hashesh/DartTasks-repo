import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/e-commerce%20task/widgets/custom_button.dart';

class AuthNamePage extends StatelessWidget {
  const AuthNamePage({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your firstname?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Tony',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      contentPadding: EdgeInsets.all(20),
                      filled: true,
                      fillColor: Color(0xffdfdfdfe9),
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
