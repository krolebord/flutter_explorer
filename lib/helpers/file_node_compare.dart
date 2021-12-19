import 'dart:io';

import 'package:flutter_treeview/flutter_treeview.dart';

void sortNode(Node<dynamic> node) {
  if(node.children.isEmpty) {
    return;
  }

  node.children.sort(nodeCompare);
}

int nodeCompare(Node<dynamic> a, Node<dynamic> b) {
  if (a.data is Directory && b.data is File) {
    return -1;
  }

  if (a.data is File && b.data is Directory) {
    return 1;
  }

  return (a.data as FileSystemEntity).path.compareTo((b.data as FileSystemEntity).path);
}