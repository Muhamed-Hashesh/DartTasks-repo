import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/views/register_page.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/widgets/button_widget.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/widgets/custom_text_field.dart';
import 'package:sec_flutter_relearn/loginMVVM/core/widgets/text_button_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Sign in",
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: MyCustomTextField(
                  validateMethod: (value) {
                    if (value!.isEmpty) {
                      return "Field can't be empty";
                    } else if (!value.contains('@')) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                  prefixIcon: null,
                  hintText: "Enter username or Email",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: MyCustomTextField(
                  validateMethod: (value) {
                    if (value!.isEmpty) {
                      return "Field can't be empty";
                    } else if (value.length < 6) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                  password: true,
                  prefixIcon: null,
                  hintText: "Password",
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: TextButtonTransparent(
                      ontap: () {},
                      text: "Recovery password",
                      color: const Color(0XFF000000),
                      fontSize: 15,
                      padding: 0),
                ),
              ),
              ButtonModel(
                text: 'Sign in',
                padding: 24,
                height: 85,
                ontap: () {
                  Navigator.pushReplacement(
                      context,
                      (MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      })));
                },
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
                      "Don't have an account",
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
                            return const RegisterPage();
                          },
                        ),
                      );
                    },
                    text: 'Register now',
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
