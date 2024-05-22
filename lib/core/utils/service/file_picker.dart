import 'package:file_picker/file_picker.dart';

class FilePickerService {
  static Future<PlatformFile?> pickSingleFile({
    FileType? fileType,
    List<String>? allowedExtensions,
  }) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: fileType ?? FileType.image,
      allowedExtensions: allowedExtensions,
    );
    return result?.files.first;
  }

  static Future<List<PlatformFile>?> pickMultiFile({
    FileType? fileType,
    List<String>? allowedExtensions,
  }) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: fileType ?? FileType.audio,
      allowedExtensions: allowedExtensions,
    );
    return result?.files;
  }
}
