import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explorer/actions/file_entity_actions/file_entity_action.dart';
import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:flutter_explorer/cubits/directory/directory_state.dart';
import 'package:flutter_explorer/cubits/selection/selection_state.dart';
import 'package:flutter_explorer/helpers/show_error_snackbar.dart';
import 'package:flutter_explorer/widgets/dialogs/confirm_dialog.dart';
import 'package:flutter_explorer/widgets/dialogs/file_name_dialog.dart';

class SelectionCubit extends Cubit<SelectionState> {
  final DirectoryCubit directoryCubit;

  FileSystemEntity? selectedEntity;

  late final StreamSubscription directorySubscription;

  late final _delete = FileEntityAction(
    label: 'Delete',
    icon: Icons.delete,
    action: (context, entity) async {
      final shouldDelete = await showConfirmDialog(
        context: context,
        action: 'Delete',
        message: 'Are you sure you want to delete ${entity.path}?'
      );

      if (!shouldDelete) {
        return;
      }

      context.read<DirectoryCubit>().delete(entity);
    },
  );

  late final _rename = FileEntityAction(
    label: 'Rename',
    icon: Icons.edit,
    action: (context, entity) async {
      final newName = await showFileNameDialog(context: context);

      if(newName == null || newName.isEmpty) {
        return;
      }

      context.read<DirectoryCubit>().rename(entity, newName);
    },
  );

  late final _move = FileEntityAction(
    label: 'Move',
    icon: Icons.double_arrow,
    action: (context, entity) async {
      final directoryPath = await getDirectoryPath(initialDirectory: path.dirname(entity.path));

      if(directoryPath == null) {
        return;
      }

      final type = await FileSystemEntity.type(directoryPath);

      if (type == FileSystemEntityType.notFound) {
        showErrorSnackBar(context, 'Directory was not found');
        return;
      }

      if (type != FileSystemEntityType.directory) {
        showErrorSnackBar(context, 'File system entity is not a directory');
        return;
      }

      context.read<DirectoryCubit>().move(entity, Directory(directoryPath));
    },
  );

  late final _copy = FileEntityAction(
    label: 'Copy',
    icon: Icons.copy,
    action: (context, entity) async {
      final directoryPath = await getDirectoryPath(initialDirectory: path.dirname(entity.path));

      if(directoryPath == null) {
        return;
      }

      final type = await FileSystemEntity.type(directoryPath);

      if (type == FileSystemEntityType.notFound) {
        showErrorSnackBar(context, 'Directory was not found');
        return;
      }

      if (type != FileSystemEntityType.directory) {
        showErrorSnackBar(context, 'File system entity is not a directory');
        return;
      }

      context.read<DirectoryCubit>().copy(entity, Directory(directoryPath));
    },
  );

  late final _createDirectory = FileEntityAction(
    label: 'New Directory',
    icon: Icons.create_new_folder,
    action: (context, entity) async {
      if (entity is! Directory) {
        return;
      }

      final newName = await showFileNameDialog(context: context);

      if(newName == null || newName.isEmpty) {
        return;
      }

      context.read<DirectoryCubit>().createDirectory(entity, newName);
    },
  );

  late final _createFile = FileEntityAction(
    label: 'New File',
    icon: Icons.add_box,
    action: (context, entity) async {
      if (entity is! Directory) {
        return;
      }

      final newName = await showFileNameDialog(context: context);

      if(newName == null || newName.isEmpty) {
        return;
      }

      context.read<DirectoryCubit>().createFile(entity, newName);
    },
  );

  late final List<FileEntityAction> _defaultActions = [
    _delete,
    _rename,
    _move,
    _copy
  ];

  late final List<FileEntityAction> _directoryActions = [
    _createDirectory,
    _createFile
  ];

  late final List<FileEntityAction> _fileActions = [

  ];

  SelectionCubit(this.directoryCubit) : super(const SelectionState.none()) {
    directorySubscription = directoryCubit.stream.listen(_handleDirectoryUpdate);
  }

  FutureOr<void> invokeAction(BuildContext context, FileEntityAction action) async {
    if (selectedEntity == null) {
      return;
    }

    return action.action.call(context, selectedEntity!);
  }

  void _handleDirectoryUpdate(DirectoryState state) {
    if (state is! DirectoryOpenedState) {
      return;
    }

    final entity = state.controller.selectedNode?.data;

    if (entity == null || entity is! FileSystemEntity) {
      emit(const SelectionState.none());
      return;
    }

    selectedEntity = entity;

    emit(SelectionState.entity([
      ..._defaultActions,

      if(selectedEntity is Directory)
        ..._directoryActions,

      if(selectedEntity is File)
        ..._fileActions
    ]));
  }
}