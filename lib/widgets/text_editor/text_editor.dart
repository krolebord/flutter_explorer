import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explorer/widgets/dialogs/confirm_dialog.dart';
import 'package:flutter_explorer/widgets/text_editor/cubits/text_selection/text_selection_cubit.dart';
import 'package:flutter_explorer/widgets/text_editor/cubits/text_selection/text_selection_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class TextEditor extends HookWidget {
  final File file;
  final String content;

  const TextEditor({
    required this.file,
    required this.content,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = useMemoized(() => FocusNode(skipTraversal: true));
    final controller = useTextEditingController(text: content);

    return MultiBlocProvider(
      providers: [
        BlocProvider<TextSelectionCubit>(create: (_) => TextSelectionCubit())
      ],
      child: BlocListener<TextSelectionCubit, TextSelectionState>(
        listener: (context, state) {
          state.when(
            none: () => controller.selection = const TextSelection.collapsed(offset: 0),
            select: (start, end) {
              controller.selection = TextSelection(
                baseOffset: start,
                extentOffset: end
              );
              node.requestFocus();
            }
          );
        },
        child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: TextField(
                maxLines: null,
                focusNode: node,
                autofocus: true,
                controller: controller,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              )
            ),
            const SizedBox(width: 8),
            MultiProvider(
              providers: [
                Provider<File>.value(value: file),
                ListenableProvider<TextEditingController>.value(value: controller),
              ],
              child: const Expanded(
                  flex: 2,
                  child: _TextToolbar()
              ),
            )
          ],
        ),
      ),
)
    );
  }
}

class _TextToolbar extends StatelessWidget {
  const _TextToolbar({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final file = context.watch<File>();
    final controller = context.watch<TextEditingController>();
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          basename(file.path),
          style: textTheme.headlineSmall,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'At ' + dirname(file.path),
            style: textTheme.caption,
          ),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: ListView(
            children: const [
              _TrimTextButton(),
              SizedBox(height: 6),
              _FindMostFrequentWordsButton(),
              SizedBox(height: 6),
              _FindLongWordsButton(),
            ],
          )
        ),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () async {
                  final shouldClose = await showConfirmDialog(
                    context: context,
                    action: 'Close',
                    message: 'Are you sure you want to close editor?\nUnsaved changes will be lost'
                  );

                  if(shouldClose) {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Cancel')
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(controller.text),
                child: const Text('Save')
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _TrimTextButton extends StatelessWidget {
  const _TrimTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: OutlinedButton(
        onPressed: () => trimText(context),
        child: const Text('Trim text'),
      ),
    );
  }

  void trimText(BuildContext context) {
    final controller = context.read<TextEditingController>();

    controller.text = const LineSplitter()
      .convert(controller.text)
      .map((line) => line.replaceAllMapped(RegExp(r'\s\s+'), (match) => ' ').trim())
      .where((line) => line.isNotEmpty)
      .join('\r\n');
  }
}

class _FindMostFrequentWordsButton extends StatefulWidget {
  const _FindMostFrequentWordsButton({Key? key}) : super(key: key);

  @override
  State<_FindMostFrequentWordsButton> createState() => _FindMostFrequentWordsButtonState();
}

class _FindMostFrequentWordsButtonState extends State<_FindMostFrequentWordsButton> {
  List<MapEntry<String, int>> entries = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OutlinedButton(
            onPressed: () => _findWords(context.read<TextEditingController>().text),
            child: const Text('Find 5 most frequent words'),
          ),
          ...entries.map((entry) => InkWell(
            onTap: () => _selectWord(
              context.read<TextSelectionCubit>(),
              context.read<TextEditingController>().text,
              entry.key
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 6, right: 6, bottom: 2),
              child: Text('${entry.value}: ${entry.key}'),
            ),
          ))
        ],
      ),
    );
  }

  void _findWords(String text) {
    text = text.replaceAllMapped(RegExp(r'\s\s+'), (match) => ' ');

    Map<String, int> count = {};

    for(final word in text.split(RegExp(r'\s')).map((word) => word.trim())) {
      final val = count.putIfAbsent(word, () => 0);
      count[word] = val + 1;
    }

    final entries = count.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));

    setState(() {
      this.entries = entries
        .toSet()
        .take(5)
        .toList();
    });
  }

  void _selectWord(TextSelectionCubit cubit, String text, String word) {
    final regEx = RegExp('(?:^|\\W)$word(?:\$|\\W)');
    final match = regEx.firstMatch(text);

    if(match == null) {
      setState(() {
        entries.removeWhere((entry) => entry.key == word);
      });
      return;
    }

    cubit.select(match.start, match.end);
  }
}

class _FindLongWordsButton extends StatefulWidget {
  const _FindLongWordsButton({Key? key}) : super(key: key);

  @override
  State<_FindLongWordsButton> createState() => _FindLongWordsButtonState();
}

class _FindLongWordsButtonState extends State<_FindLongWordsButton> {
  List<String> words = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OutlinedButton(
            onPressed: () => _findWords(context.read<TextEditingController>().text),
            child: const Text('Find 10 longest words'),
          ),
          ...words.map((word) => InkWell(
            onTap: () => _selectWord(
              context.read<TextSelectionCubit>(),
              context.read<TextEditingController>().text,
              word
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 6, right: 6, bottom: 2),
              child: Text(word),
            ),
          ))
        ],
      ),
    );
  }

  // text = text.replaceAllMapped(RegExp(r'\s\s+'), (match) => ' ');

  void _findWords(String text) {
    text = text.replaceAllMapped(RegExp(r'\s\s+'), (match) => ' ');

    final words = text
      .split(RegExp(r'\s'))
      .map((word) => word.trim())
      .toList();

    words.sort((a, b) => b.length.compareTo(a.length));

    setState(() {
      this.words = words.toSet().take(10).toList();
    });
  }

  void _selectWord(TextSelectionCubit cubit, String text, String word) {
    final regEx = RegExp('(?:^|\\W)$word(?:\$|\\W)');
    final match = regEx.firstMatch(text);

    if(match == null) {
      setState(() {
        words.remove(word);
      });
      return;
    }

    cubit.select(match.start, match.end);
  }
}

