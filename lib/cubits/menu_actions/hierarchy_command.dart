import 'dart:async';
import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:flutter_explorer/cubits/hierarchy_path/hierarchy_path_cubit.dart';
import 'package:flutter_explorer/models/hierarchy_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hierarchy_command.freezed.dart';

@freezed
class HierarchyCommand with _$HierarchyCommand {
  const factory HierarchyCommand.none() = HierarchyNoneCommand;

  const factory HierarchyCommand.path({
    required HierarchyName name,
    required FutureOr<void> Function(HierarchyPathCubit pathCubit) handle
  }) = HierarchyPathCommand;

  const factory HierarchyCommand.directory({
    required HierarchyName name,
    required FutureOr<void> Function(DirectoryCubit pathCubit) handle
  }) = HierarchyDirectoryCommand;
}
