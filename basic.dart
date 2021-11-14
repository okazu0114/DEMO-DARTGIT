late var test2;
final testConst = "CONST_STRING";
const test2Const = "CONST_STRING_2";

var longStringConst = """
so long long long long
long long long long long...
string!!!
"""
    .trim();

void main(List<String> args) {
  printTest("---- LIST -----");
  // create & manipulate List
  var testList = [1, 2, 0, 9, 5, 12, 15, 7];
  testList.sort((a, b) => a.compareTo(b));
  testList.add(1);
  printTest("list sort result: " + testList.toString());

  // execute convert using "map" & print
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => e * e).forEach((element) {
    printTest(element);
  });

  // create & manipulate Set
  printTest("----- SET -----");
  var testSet = {'a', 'b', 'c'};
  testSet.add('d');
  testSet.add('c');
  printTest("set result: " + testSet.toString());

  // create & manipulate Map
  printTest("----- MAP -----");
  var testMap = {
    'name': 'tokkyer',
    'nickname': 'mltokky',
  };
  printTest("testMap(name): ${testMap['name']}");
  printTest("testMap(nothing): ${testMap['nothing']}"); // not found key

  print("");

  // embedded string
  printTest("embedded string: $testConst");

  // set value to late initialization variable
  if (args.length == 0) {
    test2 = "nothing";
  } else {
    test2 = args[0];
  }
  printTest(test2);
  printTest(testConst);
  printTest(test2Const);
  printTest(longStringConst);

  int a = 125;
  printTest(a.toString());

  // trying parse to integer from invalid string
  String b = "115x";
  printTest(int.tryParse(b) ?? -1);

  printTest("embedded part.2: ${a.toString()}");

  // create instance from class
  var clazz = TestClass();
  printTest(clazz.toString());
  printTest(clazz.getFixedString());

  // calculation
  printTest(10 / 6);
  printTest(10 ~/ 6);
  printTest(10 % 6);

  printTest("10 / 6 = ${10 / 6}");
  printTest("10 ~/ 6 = ${10 ~/ 6}");

  // Named parameter test
  printStringTest(message: "named parameter");
  printStringTest(message: "named parameter with line feed", withLineFeed: true);
  // optional positional parameter
  printTest(12, true);

  // Anonymous functions
  var stringList = ['1', '2', '3', '4', '5'];
  printTest("----- anonymous functions -----");
  stringList.forEach((e) {
    printTest("map1: ${e}");
  });
  stringList.forEach((e) => printTest("map2: ${e}"));
}

void printTest(Object? message, [bool withLineFeed = false]) {
  print("test: ${message.toString()}${withLineFeed ? '\n' : ''}");
}

void printStringTest({required String message, bool withLineFeed = false}) {
  printTest(message, withLineFeed);
}

class TestClass {
  @override
  String toString() {
    return "これはテストです";
  }

  String getFixedString() {
    return "固定文字列を返すよー";
  }
}
