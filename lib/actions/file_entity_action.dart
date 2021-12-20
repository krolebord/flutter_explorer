import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class FileEntityAction<T extends FileSystemEntity> {
  final String label;
  final IconData icon;
  final FutureOr<void> Function(BuildContext context, T entity) action;

  const FileEntityAction({
    required this.label,
    required this.icon,
    required this.action,
  });
}