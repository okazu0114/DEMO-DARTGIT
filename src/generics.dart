void main(List<String> args) {
  var strList = <String>["start"]; // create List<String>
  strList.add("test");
  strList.add("test");
  strList.add("test");
  strList.addAll(["test1", "test2", "test3"]);
  print("strList: $strList");

  var strSet = <String>{"start"}; // create Set<String>
  strSet.add("test");
  strSet.add("test");
  strSet.add("test");
  strSet.addAll({"test1", "test2", "test3"});
  print("strSet: $strSet");

  var strMap = <String, String>{"init": "start"}; // create Map<String, String>
  strMap["key1"] = "test1";
  strMap["key2"] = "test2";
  strMap["key3"] = "test3";
  print("strMap: $strMap");
}
