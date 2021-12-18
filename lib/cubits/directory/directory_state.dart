import 'dart:io';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'directory_state.freezed.dart';

@freezed
class DirectoryState with _$DirectoryState {
  const factory DirectoryState.initial() = DirectoryInitialState;
  const factory DirectoryState.loading(String path) = DirectoryLoadingState;
  const factory DirectoryState.opened(
    Directory directory,
    TreeViewController controller
  ) = DirectoryOpenedState;
  const factory DirectoryState.notFound(String path) = DirectoryNotFoundState;
  const factory DirectoryState.error(String message) = DirectoryErrorState;
}
