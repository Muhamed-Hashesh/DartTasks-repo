import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/views/signin_page.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/widgets/custom_text_field.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/widgets/text_button_widget.dart';

import '../widgets/button_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffEDEDFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 110,
        backgroundColor: const Color(0xffEDEDFF),
        elevation: 0,
        leadingWidth: 100,
        leading: Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              backgroundColor: Color(0XFFE3E3E3),
              radius: 25,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0XFF000000),
                size: 20,
              ),
            ),
          ),
        ),
        // title: Image.asset(
        //   "assets/images/Spotify_logo.png",
        //   width: 140,
        // ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Register",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: const Color(0XFF000000),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "if you need any support",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF969696),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButtonTransparent(
                      ontap: () {},
                      text: 'click here',
                      color: const Color(0XFF1ED760),
                      fontSize: 16,
                      padding: 0,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, bottom: 8),
                child: MyCustomTextField(
                  prefixIcon: null,
                  hintText: "Full Name",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: MyCustomTextField(
                  prefixIcon: null,
                  hintText: "Enter Email",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: MyCustomTextField(
                  password: true,
                  prefixIcon: null,
                  hintText: "Password",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ButtonModel(
                  text: 'Register',
                  padding: 24,
                  height: 85,
                  ontap: () {
                    Navigator.pushReplacement(
                        context,
                        (MaterialPageRoute(builder: (context) {
                          return const SizedBox();
                        })));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.2,
                        color: const Color(0XFF000000).withOpacity(0.20),
                        indent: 5,
                        endIndent: 10,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'or',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.2,
                        color: const Color(0XFF000000).withOpacity(0.20),
                        indent: 10,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  width: 150,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/google.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/apple.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "do you have an account ?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF969696),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextButtonTransparent(
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignInPage();
                          },
                        ),
                      );
                    },
                    text: 'Sign in',
                    color: const Color(0XFF1ED760),
                    fontSize: 16,
                    padding: 0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
