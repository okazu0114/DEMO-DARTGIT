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
  var testList = [1, 2, 0, 9, 5, 12, 15, 7];
  testList.sort((a, b) => a.compareTo(b));
  testList.add(1);
  printTest("list sort result: " + testList.toString());

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
  String b = "115x";
  printTest(int.tryParse(b) ?? -1);

  printTest("embedded part.2: ${a.toString()}");

  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => e * e).forEach((element) {
    printTest(element);
  });

  var clazz = TestClass();
  printTest(clazz.toString());
  printTest(clazz.getFixedString());

  printTest(10 / 6);
  printTest(10 ~/ 6);
  printTest(10 % 6);

  print("10 / 6 = ${10 / 6}");
  print("10 ~/ 6 = ${10 ~/ 6}");
}

void printTest(Object message) {
  print("test: " + message.toString());
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
