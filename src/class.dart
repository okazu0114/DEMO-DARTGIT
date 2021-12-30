class Rectangle {
  int x = 0;
  int y = 0;
  int width = 0;
  int height = 0;

  // Constructor(same name function with class)
  Rectangle() {}

  // Named Constructor
  Rectangle.create(int x, int y, int width, int height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  // Operator implementation
  Rectangle operator +(Rectangle rect) => Rectangle.create(this.x + rect.x, this.y + rect.y, this.width + rect.width, this.height + rect.height);
  Rectangle operator -(Rectangle rect) => Rectangle.create(this.x - rect.x, this.y - rect.y, this.width - rect.width, this.height - rect.height);

  // Getter
  int get left => x;
  int get right => x + width;
  int get top => y;
  int get bottom => y + height;

  // Setter
  set left(int left) => x = left;
  set right(int right) => x = right - width;
  set top(int top) => y = top;
  set bottom(int bottom) => y = bottom - height;

  String toString() {
    return "x=${this.x}, y=${this.y}, width=${this.width}, height=${this.height}";
  }
}

class Rectangle2 {
  int x = 0;
  int y = 0;
  int width = 0;
  int height = 0;

  // Constructor: Syntax sugar -> convinience!!!
  Rectangle2(this.x, this.y, this.width, this.height);
}

class ColorRectangle extends Rectangle {
  int color = 0xffffff;

  // Call super named contructor before invoking current constructor
  ColorRectangle.create(int x, int y, int width, int height, int color) : super.create(x, y, width, height) {
    this.color = color;
  }

  @override
  String toString() {
    return "${super.toString()}, color: ${this.color.toRadixString(16)}";
  }
}

// Immutable class
class ImmutableRectangle {
  final int x, y, width, height;

  const ImmutableRectangle(this.x, this.y, this.width, this.height);
}

extension ManipulationString on String {
  String shiftCharacter(int shift) {
    return this.runes.map((e) => String.fromCharCode(e + shift)).join();
  }
}

void main(List<String> args) {
  var rect = new Rectangle();
  print(rect.toString());
  print("runtimeType: ${rect.runtimeType}");

  var colorRect = ColorRectangle.create(0, 0, 15, 30, 0x880000);
  print(colorRect.toString());

  // constant immutable class
  var immRect = const ImmutableRectangle(0, 0, 5, 20);
  // ↓ Comiple error
  // immRect.x = 10;
  print("immutable: ${immRect}");

  var rectA = Rectangle.create(1, 2, 3, 4);
  var rectB = Rectangle.create(4, 3, 2, 1);
  var addRect = rectA + rectB;
  print("rectA + rectB: ${addRect}");

  var str = "abcdefg";
  print("$str -> ${str.shiftCharacter(1)}");
}
