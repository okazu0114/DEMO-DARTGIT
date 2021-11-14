void main(List<String> args) {
  // Type test operator(is, is!, as)
  var value1 = 12.5;
  print("$value1 is double? -> ${value1 is double}");
  var value2 = 900;
  print("$value2 is String? -> ${value2 is String}");
  var value3 = "TEST";
  print("$value3 is not int? -> ${value3 is! int}");
  var customString = CustomString() as Object;
  print("customString -> ${customString.toString()}");

  // assign new value if value is null
  var nonNullValue = "NEW VALUE";
  String? maybeNullValue = "OLD VALUE";
  maybeNullValue ??= nonNullValue;
  print("assign value to non-null variable: $maybeNullValue");
  maybeNullValue = null;
  maybeNullValue ??= nonNullValue;
  print("assign value to null variable: ${maybeNullValue}");

  // Conditional expression
  var isPublic = true;
  print("isPublic: ${isPublic ? "Yes" : "No"}");
  String? input;
  if (!isPublic) {
    input = "public";
  }
  print("${input ?? "null"}");

  // Cascade notation
  var list = []
    ..add("value1")
    ..add("value2")
    ..add("value3");
  print(list);
}

class CustomString extends Object {
  @override
  String toString() {
    return "CustomString";
  }
}
