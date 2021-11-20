void main(List<String> args) {
  // Named parameter test
  printStringTest(message: "named parameter");
  printStringTest(message: "named parameter with line feed", withLineFeed: true);
  // optional positional parameter
  printTest(12, true);

  // Anonymous functions
  var stringList = ['1', '2', '3', '4', '5'];
  print("----- anonymous functions -----");
  stringList.forEach((e) {
    print("map1: ${e}");
  });
  stringList.forEach((e) => print("map2: ${e}"));
}

void printTest(Object? message, [bool withLineFeed = false]) {
  print("test: ${message.toString()}${withLineFeed ? '\n' : ''}");
}

void printStringTest({required String message, bool withLineFeed = false}) {
  printTest(message, withLineFeed);
}
