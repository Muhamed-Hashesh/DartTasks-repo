import 'package:sectask1abstract/circle.dart';
import 'package:sectask1abstract/rectangle.dart';

void main(List<String> arguments) {
  Circle circle = Circle(width: 10, height: 10);
  print(circle.area());
  print(circle.perimeter());

  print('\n==============================\n');

  Rectangle rec = Rectangle(width: 10, height: 20);
  print(rec.area());
  print(rec.perimeter());
}
