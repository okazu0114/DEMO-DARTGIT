void main(List<String> args) {
  // 2 types for-loop
  for (var i = 0; i < 15; i++) {
    print("i: $i");
  }
  for (final index in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]) {
    print("index: $index");
  }

  // assert (required to enable asserts option)
  var a = 1;
  assert(a == 2, "a isn't 2");
  print("Finished!");
}
