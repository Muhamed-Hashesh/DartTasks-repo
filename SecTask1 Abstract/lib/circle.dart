import 'dart:math';
import 'package:sectask1abstract/shape.dart';

class Circle extends Shape {
  Circle({required super.width, required super.height});

  @override
  double area() {
    double result=0;

    if (width == height) {
      result = pi * width;
    }
    return result;

  }

  @override
  double perimeter() {
    return 2 * pi * (width/2);

  }
}
