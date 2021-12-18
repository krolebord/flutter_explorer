import 'dart:io';
import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:flutter_explorer/cubits/directory/directory_state.dart';
import 'package:flutter_explorer/helpers/get_service.dart';
import 'package:flutter_explorer/services/directories_watcher.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explorer/cubits/hierarchy_path/hierarchy_path_cubit.dart';
import 'package:flutter_explorer/cubits/hierarchy_path/hierarchy_path_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';
import 'package:path/path.dart' as path;

class FileHierarchy extends HookWidget {
  const FileHierarchy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HierarchyPathCubit>(
      create: (context) => HierarchyPathCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          _HierarchyHeader(),
          Expanded(
            child: _HierarchyBody()
          ),
        ],
      ),
    );
  }
}

class _HierarchyHeader extends HookWidget {
  const _HierarchyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pathController = useTextEditingController();

    useBloc<HierarchyPathCubit, HierarchyPathState>(
      onEmitted: (context, cubit, state) {
        state.maybeWhen(
          set: (path) {
            pathController.text = path;
          },
          orElse: () {}
        );

        return true;
      }
    );

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: pathController,
            onSubmitted: (path) => context.read<HierarchyPathCubit>().setPath(path),
          ),
        ),
        IconButton(
          onPressed: () => context.read<HierarchyPathCubit>().openPath(),
          icon: const Icon(Icons.add)
        )
      ],
    );
  }
}

class _HierarchyBody extends HookWidget {
  const _HierarchyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pathState = useBloc<HierarchyPathCubit, HierarchyPathState>();

    if (pathState is! HierarchyPathSetState) {
      return const Center(
        child: Text('Pick folder'),
      );
    }

    final directoryCubit = useMemoized(
      () => getService<DirectoriesWatcher>().getBloc(pathState.path),
      [pathState.path]
    );
    final directoryState = useBloc<DirectoryCubit, DirectoryState>(bloc: directoryCubit);

    if (directoryState is! DirectoryOpenedState) {
      return directoryState.maybeMap(
        notFound: (state) => Center(
          child: Text('${state.path} was not found'),
        ),
        orElse: () => const Center(
          child: Text('Pick folder'),
        )
      );
    }

    return Column(
      children: [
        TreeView(
          shrinkWrap: true,
          controller: directoryState.controller,
          theme: const TreeViewTheme(
            colorScheme: ColorScheme.dark(),
            verticalSpacing: 2,
            expanderTheme: ExpanderThemeData(
              color: Colors.white54,
              type: ExpanderType.chevron,
              modifier: ExpanderModifier.none,
              position: ExpanderPosition.start,
              size: 16,
              animated: true
            )
          ),
          nodeBuilder: (context, node) => DragTarget<FileSystemEntity>(
            onAccept: (data) async {
              if (node.data is! Directory) {
                return;
              }

              final directory = node.data as Directory;

              if (data is Directory) {
                if (path.isWithin(data.path, directory.path)) {
                  return;
                }
                final fileName = path.basename(data.path);
                final newPath = path.join(directory.path, fileName);
                await data.rename(newPath);
                return;
              }

              if (data is File) {
                final fileName = path.basename(data.path);
                final newPath = path.join(directory.path, fileName);
                await data.rename(newPath);
                return;
              }
            },
            builder: (context, candidateData, rejectedData) => Draggable<FileSystemEntity>(
              data: node.data,
              feedback: Text(node.label),
              child: SizedBox(
                height: 24,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(node.label)
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: DragTarget<FileSystemEntity>(
            builder: (_, __, ___) => Container(color: Colors.red),
          )
        )
      ],
    );
  }
}


