import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

extension PlatformFileEx on PlatformFile {
  String toBase64() {
    final fileReadToBytes = File(path ?? "").readAsBytesSync();
    return base64Encode(fileReadToBytes);
  }
}
