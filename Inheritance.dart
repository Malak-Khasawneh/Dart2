class Shape {
  double area;

  Shape(this.area);

  void describe() {
    print("This is a shape with an area of $area square units.");
  }
}

const pi = 3.14;

class Circle extends Shape {
  double radius;

  Circle(this.radius) : super(pi * radius * radius);

  @override
  void describe() {
    print("This is a circle with a radius of $radius.");
    super.describe();
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height) : super(width * height);

  @override
  void describe() {
    print(
        "This is a rectangle with a width of $width  and a height of $height .");
    super.describe(); // describe method of the base class
  }
}

void main() {
  final Circlee = Circle(5.0);
  final Rect = Rectangle(4.0, 6.0);

  Circlee.describe();
  Rect.describe();
}
