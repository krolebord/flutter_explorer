import 'dart:io';
import 'package:flutter_explorer/models/exceptions/filesystem_parsed_error.dart';
import 'package:path/path.dart' as path;
import 'package:injectable/injectable.dart';

@Singleton()
class FileSystemService {
  Future<void> copy(FileSystemEntity target, FileSystemEntity destinationDirectory) async {
    if (destinationDirectory is! Directory) {
      return;
    }

    if (destinationDirectory.path == target.path) {
      return;
    }

    if (target is Directory && path.isWithin(target.path, destinationDirectory.path)) {
      return;
    }

    final oldDirectoryPath = path.dirname(target.path);
    final newPath = _getNewPath(target.path, oldDirectoryPath, destinationDirectory.path);

    if (await FileSystemEntity.type(newPath) != FileSystemEntityType.notFound) {
      throw const FileSystemParsedError('File already exists');
    }

    if (target is File) {
      await _copyFile(target, newPath);
      return;
    }

    if (target is Directory) {
      await _copyFolder(target, oldDirectoryPath, newPath);
      return;
    }

    return;
  }

  Future<void> move(FileSystemEntity target, FileSystemEntity destinationDirectory) async {
    if (destinationDirectory is! Directory) {
      return;
    }

    if (destinationDirectory.path == target.path) {
      return;
    }

    if (target is Directory && path.isWithin(target.path, destinationDirectory.path)) {
      return;
    }

    final oldDirectoryPath = path.dirname(target.path);
    final newPath = _getNewPath(target.path, oldDirectoryPath, destinationDirectory.path);

    if (await FileSystemEntity.type(newPath) != FileSystemEntityType.notFound) {
      throw const FileSystemParsedError('File already exists');
    }

    try {
      await target.rename(newPath);
    }
    on FileSystemException catch(e) {
      if(e.osError?.errorCode != 17) {
        rethrow;
      }

      if (target is File) {
        await _copyFile(target, newPath);
        await target.delete(recursive: true);
        return;
      }

      if (target is Directory) {
        await _copyFolder(target, oldDirectoryPath, newPath);
        await target.delete(recursive: true);
        return;
      }
    }
  }

  String _getNewPath(String filePath, String oldDirectory, String newDirectory) {
    final fileName = path.relative(filePath, from: oldDirectory);
    return path.join(newDirectory, fileName);
  }

  Future<void> _copyFile(File file, String destination) async {
    await Directory(path.dirname(destination)).create(recursive: true);
    await file.copy(destination);
  }

  Future<void> _copyFolder(Directory directory, String oldDirectory, String newDirectory) async {
    final copyFutures = await directory
      .list(recursive: true, followLinks: false)
      .where((entity) => entity is File)
      .cast<File>()
      .map((file) => _copyFile(file, _getNewPath(file.path, oldDirectory, path.dirname(newDirectory))))
      .toList();

    await Future.wait(copyFutures);
  }

  Future<void> delete(FileSystemEntity entity) {
    return entity.delete(recursive: true);
  }

  Future<void> rename(FileSystemEntity entity, String newName) async {
    if (!await entity.exists()) {
      throw FileSystemParsedError('File was not found at ${entity.path}');
    }

    await entity.rename(path.join(path.dirname(entity.path), newName));
  }

  Future<void> createDirectory(Directory directory, String newDirectoryName) async {
    final newPath = path.join(directory.path, newDirectoryName);

    if(await FileSystemEntity.type(newPath) != FileSystemEntityType.notFound) {
      throw FileSystemParsedError('Entry with name $newDirectoryName already exists');
    }

    await Directory(newPath).create();
  }

  Future<void> createFile(Directory directory, String newFileName) async {
    final newPath = path.join(directory.path, newFileName);

    if(await FileSystemEntity.type(newPath) != FileSystemEntityType.notFound) {
      throw FileSystemParsedError('Entry with name $newFileName already exists');
    }

    await File(newPath).create();
  }
}