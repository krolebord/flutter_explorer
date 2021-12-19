import 'package:flutter/material.dart';
import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:flutter_treeview/flutter_treeview.dart';

class SelectPreviousIntent extends Intent {
  const SelectPreviousIntent();
}

class SelectPrevious extends Action<SelectPreviousIntent> {
  final TreeViewController controller;
  final DirectoryCubit cubit;

  SelectPrevious(this.controller, this.cubit);

  @override
  void invoke(covariant Intent intent) {
    final selectedNode = controller.selectedNode;

    if (selectedNode == null) {
      cubit.select(controller.children.first.key);
      return;
    }

    final selectedIndex = controller.children.indexOf(selectedNode);

    if (selectedIndex < 0 || selectedIndex > controller.children.length - 2) {
      cubit.select(controller.children.first.key);
      return;
    }

    cubit.select(controller.children[selectedIndex + 1].key);
  }
}