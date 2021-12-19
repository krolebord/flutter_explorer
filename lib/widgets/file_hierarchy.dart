import 'dart:io';
import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:flutter_explorer/cubits/directory/directory_state.dart';
import 'package:flutter_explorer/cubits/selection/selection_cubit.dart';
import 'package:flutter_explorer/cubits/selection/selection_state.dart';
import 'package:flutter_explorer/helpers/show_error_snackbar.dart';
import 'package:flutter_explorer/hooks/use_disposable_hook.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explorer/cubits/hierarchy_path/hierarchy_path_cubit.dart';
import 'package:flutter_explorer/cubits/hierarchy_path/hierarchy_path_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';

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
          color: Colors.white54,
          icon: const Icon(Icons.folder_open)
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

    final directoryCubit = useDisposable<DirectoryCubit>(
      factory: () => DirectoryCubit(path: pathState.path),
      disposer: (cubit) => cubit.close(),
      keys: [pathState.path]
    );
    final directoryState = useBloc<DirectoryCubit, DirectoryState>(
      bloc: directoryCubit,
      onEmitted: (context, previous, current) {
        if (current is DirectoryErrorState) {
          showErrorSnackBar(context, current.message);
          return false;
        }

        return true;
      },
    );

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

    return MultiBlocProvider(
      providers: [
        BlocProvider<DirectoryCubit>.value(
          value: directoryCubit,
        ),
        BlocProvider<SelectionCubit>(create: (_) => SelectionCubit(directoryCubit))
      ],
      child: Column(
        children: [
          Expanded(
            child: _HierarchyTree(controller: directoryState.controller)
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: _SelectedActions(),
          )
        ],
      ),
    );
  }
}

class _HierarchyTree extends StatelessWidget {
  final TreeViewController controller;

  const _HierarchyTree({
    required this.controller,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TreeView(
      controller: controller,
      allowParentSelect: true,
      // supportParentDoubleTap: true,
      onNodeTap: (path) => context.read<DirectoryCubit>().select(path),
      onExpansionChanged: (path, expanded) {
        final cubit = context.read<DirectoryCubit>();

        if(expanded) {
          cubit.expand(path);
        }
        else {
          cubit.collapse(path);
        }
      },
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
        onAccept: (data) => context.read<DirectoryCubit>().move(data, node.data),
        builder: (context, candidateData, rejectedData) {
          final widget = SizedBox(
            height: 24,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(node.label)
            ),
          );

          if(controller.children.contains(node)) {
            return widget;
          }

          return Draggable<FileSystemEntity>(
            data: node.data,
            feedback: Text(node.label),
            child: widget
          );
        },
      ),
    );
  }
}

class _SelectedActions extends StatelessWidget {
  const _SelectedActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectionCubit, SelectionState>(
      builder: (context, state) => state.map(
        none: (_) => const SizedBox(),
        entity: (state) => Wrap(
          spacing: 8,
          verticalDirection: VerticalDirection.up,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.end,
          children: state.actions.map(
            (action) => TextButton.icon(
              onPressed: () => context.read<SelectionCubit>().invokeAction(context, action),
              icon: Icon(action.icon),
              label: Text(action.label)
            )
          ).toList(),
        )
      ),
    );
  }
}


