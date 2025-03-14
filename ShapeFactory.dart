import 'package:practicefactorydesignpattern/Circle.dart';
import 'package:practicefactorydesignpattern/Rectangle.dart';
import 'package:practicefactorydesignpattern/Shape.dart';
import 'package:practicefactorydesignpattern/Square.dart';

class ShapeFactory {
  Shape? getShape(String shapeType) {
    switch (shapeType.toLowerCase()) {
      case "circle":
        return Circle();
      case "rectangle":
        return Rectangle();
      case "square":
        return Square();
      default:
        return null;
    }
  }
}
