import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Future<String?> showFileNameDialog({
  required BuildContext context,

}) {
  return showDialog<String>(
    context: context,
    builder: (context) => const FileNameDialog(),
  );
}

class FileNameDialog extends HookWidget {
  const FileNameDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final formKey = useMemoized(() => GlobalKey<FormFieldState>());
    final controller = useTextEditingController();
    final nameRegex = useMemoized(() => RegExp(r'^[\w\-. ]+$'));

    return Dialog(
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'File name',
                  style: textTheme.headlineSmall,
                ),
              ),
              TextFormField(
                key: formKey,
                controller: controller,
                autovalidateMode: AutovalidateMode.always,
                autofocus: true,
                maxLines: 1,
                minLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'File name is required';
                  }

                  if (!nameRegex.hasMatch(value)) {
                    return 'Invalid file name';
                  }

                  return null;
                },
                onFieldSubmitted: (path) {
                  if(formKey.currentState?.validate() != true) {
                    return;
                  }

                  Navigator.of(context).pop(path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

