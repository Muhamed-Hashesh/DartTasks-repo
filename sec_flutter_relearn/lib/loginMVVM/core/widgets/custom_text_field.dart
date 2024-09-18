import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  const MyCustomTextField({
    super.key,
    this.prefixIcon,
    required this.hintText,
    this.password = false,
    this.validateMethod,
    this.controller,
  });

  final Icon? prefixIcon;
  final String hintText;
  final bool password;
  final String? Function(String?)? validateMethod;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validateMethod,
      cursorColor: const Color(0XFFABABAB),
      obscureText: password,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 33, horizontal: 24),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0XFFABABAB)),
        prefixIcon: prefixIcon,
        prefixIconColor: const Color(0XFFABABAB),
        filled: true,
        fillColor: const Color(0XFFF2F2F2),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color(0XFFABABAB),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
