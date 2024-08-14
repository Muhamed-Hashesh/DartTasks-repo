import 'package:sectask1abstract/shape.dart';

class Rectangle extends Shape {
  Rectangle({required super.width, required super.height});

  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
  
}