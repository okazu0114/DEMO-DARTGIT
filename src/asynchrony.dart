import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  print("start print delayed...");
  await printDelayed("delayed message", 2);
  print("print finished");

  sleep(Duration(milliseconds: 1000));

  print("get HTML data...");
  var data = await getGoogleTopHtml();
  print("--- google top HTML data ---\n$data\n");
}

Future<void> printDelayed(String message, int seconds) {
  return Future.delayed(Duration(seconds: seconds), () => print(message));
}

Future<String?> getGoogleTopHtml() async {
  var client = HttpClient();
  String? data;
  try {
    var request = await client.getUrl(Uri.parse("https://www.google.com/"));
    var response = await request.close();
    data = await response.transform(utf8.decoder).join();
  } catch (e) {
    print("cannot get HTML data: ${e}");
  } finally {
    client.close();
  }

  return data;
}
