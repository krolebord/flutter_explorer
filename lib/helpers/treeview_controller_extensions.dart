import 'dart:io';
import 'dart:math';
import 'package:flutter_explorer/helpers/file_node_compare.dart';
import 'package:flutter_explorer/helpers/file_system_entity_extensions.dart';
import 'package:path/path.dart' as path;
import 'package:flutter_treeview/flutter_treeview.dart';

extension TreeViewControllerExtensions on TreeViewController {
  TreeViewController withAddFileNode(FileSystemEntity entity) {
    final parentPath = path.dirname(entity.path);
    final parent = getNode(parentPath);

    if (parent == null) {
      return this;
    }

    final node = entity.toNode();
    var insertIndex = parent.children.length - 1;
    for(int i = 0; i < parent.children.length; ++i) {
      if (nodeCompare(node, parent.children[i]) < 0) {
        insertIndex = i;
        break;
      }
    }

    return withAddNode(
        parentPath,
        node,
        index: max(insertIndex, 0),
        mode: InsertMode.insert
    );
  }
}