void main(List<String> args) {
  // catch exception
  try {
    int.parse("source");
  } catch (e) {
    print("source: throw exception & catch: \n$e");
  }

  // catch specify exception
  try {
    var a = "test";
    int.parse(a);
  } on FormatException {
    print("test: throw FormatException");
  }

  // catch exception & take error & stacktrace object
  try {
    int.parse("oo001122");
  } catch (e, s) {
    print("error: \n$e");
    print("stack trace: \n$s");
  } finally {
    print("finally process");
  }
}
