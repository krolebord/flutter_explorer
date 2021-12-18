import 'dart:io';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:path/path.dart';

extension FileSystemEntityExtensions on FileSystemEntity {
  Node<FileSystemEntity> toNode() {
    return Node<FileSystemEntity>(
        key: path,
        label: basename(path),
        data: this
    );
  }
}
