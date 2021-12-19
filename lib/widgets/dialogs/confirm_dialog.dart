import 'package:flutter/material.dart';

Future<bool> showConfirmDialog({
  required BuildContext context,
  required String action,
  required String message
}) async {
  final cancelButton = TextButton(
    child: const Text('Cancel'),
    onPressed: () => Navigator.of(context).pop(false),
  );

  final confirmButton = TextButton(
    child: Text(action),
    onPressed: () => Navigator.of(context).pop(true),
  );

  final delete = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(action),
      content: Text(message),
      actions: [
        confirmButton,
        cancelButton
      ],
    ),
  );

  return delete == true;
}