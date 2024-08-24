import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/buttons_task/navigaters.dart';

import '../task1_profile/profile_page.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginedIn(),
                  ),
                ),
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
              ),
              TextButton(
                onPressed: () => print('Text Button Pressed'),
                child: const Text('Forgot password?'),
              ),
              OutlinedButton(
                  onPressed: () => print('Outlined Button Pressed'),
                  child: const Text('Sign Up with google')),
            ],
          ),
        ),
      ),
    );
  }
}
