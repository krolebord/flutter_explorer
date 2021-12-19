import 'dart:io';

Future<FileSystemEntity?> createFileEntity(String path) async {
  final type = await FileSystemEntity.type(path);

  switch(type) {
    case FileSystemEntityType.directory:
      return Directory(path);
    case FileSystemEntityType.file:
      return File(path);
    default:
      return null;
  }
}