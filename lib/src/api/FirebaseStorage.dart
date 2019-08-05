import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class FireStorage {
  FireStorage();


  static Future<String> getFilePath() async {
    String timstamp() => DateTime.now().millisecondsSinceEpoch.toString();

    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/payment';
    await Directory(dirPath).create(recursive: true);
    return '$dirPath/${timstamp()}.png';
  }

  static Future<File> writeQRImage(File file, ByteData byteData) async {
    final buffer = byteData.buffer;
    return await file.writeAsBytes(
        buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes)
    );
  }
}