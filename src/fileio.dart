import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  final dir = Directory("./output");

  // write & read file (chaining method using Future)
  print("===== START WRITE & READ (chaining method using Future) =====");
  print("create directory: output");
  await dir.create().then((value) {
    final file = File("${value.path}/test1.txt");
    print("Write text to file: ${file.path}");
    return file.writeAsString("This is test");
  }).then((value) {
    print("Write OK!");
    print("Read text from file: ${value.path}");
    return value.readAsString();
  }).then((value) {
    print("Read OK! --> $value");
  }).onError((error, stackTrace) {
    print("write or read file error: $error}");
  }).whenComplete(() {
    if (dir.existsSync()) {
      dir.deleteSync(recursive: true);
    }
    print("Finished!");
  });

  print("");
  sleep(Duration(seconds: 2));
  print("===== START WRITE & READ (using await/async) =====");
  // write & read file (using await/async)
  try {
    print("create directory: ${dir.path}");
    await dir.create();

    final file = File("${dir.path}/test2.txt");
    print("Write text to file: ${file.path}");
    await file.writeAsString("This is test part2.");
    print("Write OK!");

    print("Read text from file: ${file.path}");
    final data = await file.readAsString();
    print("Read OK! --> $data");
  } catch (e) {
    print("write or read file error: $e");
  } finally {
    if (await dir.exists()) {
      await dir.delete(recursive: true);
    }
    print("Finished!");
  }

  print("");
  sleep(Duration(seconds: 2));
  print("===== START WRITE & READ (using Stream) =====");
  try {
    print("create directory: ${dir.path}");
    await dir.create();

    final file = File("${dir.path}/test3.txt");
    print("Write text to file: ${file.path}");
    final writeStream = file.openWrite();
    writeStream.write("This is test part3.");
    await writeStream.close();
    print("Write OK!");

    print("Read text from file: ${file.path}");
    final readStream = file.openRead();
    final data = await readStream.transform(utf8.decoder).join();
    print("Read OK! --> $data");
  } catch (e) {
    print("write or read file error: $e");
  } finally {
    if (await dir.exists()) {
      await dir.delete(recursive: true);
    }
    print("Finished!");
  }
}
