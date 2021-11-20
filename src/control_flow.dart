import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // if-else
  if (args.isEmpty) {
    print("arguments is empty");
  } else {
    print("arguments is some values");
  }

  // while-loop part1
  var random = Random();
  var list = [];
  while (list.length < 10) {
    list.add(random.nextInt(100));
  }
  print("random int list: $list");

  // while-loop part2
  list.clear();
  do {
    list.add(random.nextDouble());
  } while (list.length < 10);
  print("random double list: $list");

  // break in while infinity loop
  print("----- random bool test ----");
  while (true) {
    if (random.nextBool()) {
      print("random is true -> break");
      break;
    }
    print("random bool is false -> next bool random...");
  }
  print("");

  // switch case
  print("----- switch case test -----");
  print("--> operation START!");
  sleep(Duration(milliseconds: 500));
  var operationList = ["RESTART", "PAUSE", "TEST1", "TEST2", "TEST3", "STOP"];
  String operation;
  do {
    operation = operationList[random.nextInt(operationList.length)];
    switch (operation) {
      case "RESTART":
        print("<-> operation RESTART!");
        break;
      case "PAUSE":
        print("--- operation PAUSE");
        break;
      case "TEST1":
        print("[1] operation TEST1");
        break;
      case "TEST2":
        print("[2] operation TEST2");
        break;
      case "TEST3":
        print("[3] operation TEST3");
        break;
      case "STOP":
        print("<-- operation STOP!! : END");
        break;
      default:
    }
    if (operation != "STOP") {
      sleep(Duration(milliseconds: 500));
    }
  } while (operation != "STOP");
  print("");

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
