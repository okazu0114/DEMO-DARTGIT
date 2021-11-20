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
  print("---- LIST -----");
  // create & manipulate List
  var testList = [1, 2, 0, 9, 5, 12, 15, 7];
  testList.sort((a, b) => a.compareTo(b));
  testList.add(1);
  print("list sort result: " + testList.toString());

  // execute convert using "map" & print
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => e * e).forEach((element) {
    print(element);
  });

  // create & manipulate Set
  print("----- SET -----");
  var testSet = {'a', 'b', 'c'};
  testSet.add('d');
  testSet.add('c');
  print("set result: " + testSet.toString());

  // create & manipulate Map
  print("----- MAP -----");
  var testMap = {
    'name': 'tokkyer',
    'nickname': 'mltokky',
  };
  print("testMap(name): ${testMap['name']}");
  print("testMap(nothing): ${testMap['nothing']}"); // not found key

  print("");

  // embedded string
  print("embedded string: $testConst");

  // set value to late initialization variable
  if (args.length == 0) {
    test2 = "nothing";
  } else {
    test2 = args[0];
  }
  print(test2);
  print(testConst);
  print(test2Const);
  print(longStringConst);

  int a = 125;
  print(a.toString());

  // trying parse to integer from invalid string
  String b = "115x";
  print(int.tryParse(b) ?? -1);

  print("embedded part.2: ${a.toString()}");

  // create instance from class
  var clazz = TestClass();
  print(clazz.toString());
  print(clazz.getFixedString());

  // calculation
  print(10 / 6);
  print(10 ~/ 6);
  print(10 % 6);

  print("10 / 6 = ${10 / 6}");
  print("10 ~/ 6 = ${10 ~/ 6}");
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
