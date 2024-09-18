import 'package:flutter/material.dart';

class ButtonModel extends StatelessWidget {
  const ButtonModel({
    super.key,
    required this.text,
    required this.ontap,
    this.padding = 32,
    this.height = 80,
  });

  final String text;
  final Function() ontap;
  final double padding;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0XFF1ED760),
        fixedSize:
            Size(MediaQuery.sizeOf(context).width - (padding * 2), height),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
