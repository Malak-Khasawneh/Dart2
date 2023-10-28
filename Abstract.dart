abstract class Shape {
  void draw(); // Abstract method
}

class Drawable {
  void draw() {
    print("Drawing a shape");
  }
}

// Class that implements the interface and extends the abstract class
class Circle extends Shape implements Drawable {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

void main() {
  final circle = Circle();

  circle.draw();
}
