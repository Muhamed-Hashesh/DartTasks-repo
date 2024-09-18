import 'package:flutter/material.dart';

class TextButtonTransparent extends StatelessWidget {
  const TextButtonTransparent({
    super.key,
    required this.ontap,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.padding,
  });

  final Function() ontap;
  final String text;
  final Color color;
  final double fontSize;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      // * stop Text button color when pressed
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.transparent;
            }

            return Colors.transparent;
          },
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
