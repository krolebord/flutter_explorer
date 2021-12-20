import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter_explorer/cubits/directory/directory_state.dart';
import 'package:flutter_explorer/helpers/create_file_entity.dart';
import 'package:flutter_explorer/helpers/file_node_compare.dart';
import 'package:flutter_explorer/helpers/file_system_entity_extensions.dart';
import 'package:flutter_explorer/helpers/get_service.dart';
import 'package:flutter_explorer/helpers/treeview_controller_extensions.dart';
import 'package:flutter_explorer/models/exceptions/filesystem_parsed_error.dart';
import 'package:flutter_explorer/services/filesystem_service.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:path/path.dart' as p;

class DirectoryCubit extends Cubit<DirectoryState> {
  final FileSystemService _filesService = getService<FileSystemService>();

  final Directory directory;

  late TreeViewController _controller;

  StreamSubscription? _watchSubscription;

  DirectoryCubit({
    required String path
  }) :
        directory = Directory(path),
        super(const DirectoryState.initial()) {
    _init(path);
  }

  FutureOr<void> collapse(String path) {
    var node = _controller.getNode(path);

    if (node == null || node.data is! Directory) {
      return Future.value();
    }

    node = node.copyWith(
      children: [],
      expanded: false
    );

    _updateController(_controller.withUpdateNode(node.key, node));
  }

  FutureOr<void> expand(String path) async {
    var node = _controller.getNode(path);

    if (node == null || node.data is! Directory) {
      return;
    }

    final directory  = node.data as Directory;

    List<FileSystemEntity>? files;

    final success = await _handleFileSystemFuture(() async {
      files = await directory.list(recursive: false, followLinks: false).toList();
    });

    if (!success) {
      return;
    }

    node = node.copyWith(
      expanded: true,
      children: files!.map((file) => file.toNode()).toList()
    );

    sortNode(node);

    _updateController(_controller.withUpdateNode(node.key, node));
  }

  FutureOr<void> changeExpansion(String path) async {
    final node = _controller.getNode(path);

    if (node == null) {
      return;
    }

    if (node.expanded) {
      await collapse(path);
      return;
    }
    else if (!node.expanded) {
      await expand(path);
      return;
    }
  }

  FutureOr<void> select(String path) {
    _updateController(_controller.copyWith(
      selectedKey: path
    ));
  }

  FutureOr<void> move(FileSystemEntity target, FileSystemEntity destinationDirectory) async {
    await _handleFileEntityFuture(
      target,
      (target) => _filesService.move(target, destinationDirectory)
    );
  }

  FutureOr<void> copy(FileSystemEntity target, FileSystemEntity destinationDirectory) async {
    await _handleFileSystemFuture(() => _filesService.copy(target, destinationDirectory));
  }

  FutureOr<void> delete(FileSystemEntity target) async {
    await _handleFileEntityFuture(
      target,
      (target) => _filesService.delete(target)
    );
  }

  FutureOr<void> rename(FileSystemEntity entity, String newName) async {
    await _handleFileEntityFuture(
      entity,
      (entity) => _filesService.rename(entity, newName)
    );
  }

  FutureOr<void> write(File file, String content) async {
    await _handleFileSystemFuture(() => _filesService.write(file, content));
  }

  FutureOr<void> createDirectory(Directory directory, String newDirectoryName) async {
    await _handleFileSystemFuture(() => _filesService.createDirectory(directory, newDirectoryName));
  }

  FutureOr<void> createFile(Directory directory, String newFileName) async {
    await _handleFileSystemFuture(() => _filesService.createFile(directory, newFileName));
  }

  Future<void> _init(String path) async {
    if (!await directory.exists()) {
      emit(DirectoryState.notFound(path));
      return;
    }

    emit(DirectoryState.loading(path));

    _updateController(TreeViewController(
      children: [directory.toNode()]
    ));

    emit(DirectoryState.opened(directory, _controller));

    directory.watch(recursive: true).listen(
      _handleFileSystemChange,
      cancelOnError: false
    );
  }

  Future<bool> _handleFileEntityFuture(
    FileSystemEntity target,
    Future Function(FileSystemEntity entity) future
  ) async {
    if(target.path == directory.path) {
      _emitRootFolderError();
      return false;
    }

    return await _handleFileSystemFuture(() => future(target));
  }

  Future<bool> _handleFileSystemFuture(Future Function() future) async {
    try {
      await future();
      return true;
    }
    on FileSystemParsedError catch (e) {
      _emitTempError(e.message);
      return false;
    }
    on FileSystemException catch (e) {
      switch (e.osError?.errorCode) {
        case 1:
          _emitTempError("Operation not permitted. Full access to the disk required");
          return false;
        default:
          _emitTempError("Error #${e.osError?.errorCode ?? -1}: ${e.osError?.message ?? e.message}");
          return false;
      }
    }
  }

  FutureOr<void> _handleFileSystemChange(FileSystemEvent event) async {
    if (event is FileSystemDeleteEvent) {
      _onRemoveEntity(event.path);
      return;
    }

    if (event is FileSystemCreateEvent) {
      final entity = await createFileEntity(event.path);
      if (entity == null) {
        return;
      }
      _onAddEntity(entity);
    }
    else if (event is FileSystemMoveEvent) {
      if (event.destination == null) {
        return;
      }

      _onMoveEntity(event.path, event.destination!);
    }
    else if (event is FileSystemModifyEvent) {
      return _onModifyEntity(event.path);
    }
  }

  FutureOr<void> _onAddEntity(FileSystemEntity entity) {
    _updateController(_controller.withAddFileNode(entity));
  }

  FutureOr<void> _onMoveEntity(String from, String to) async {
    var controller = _controller.withDeleteNode(from);

    final parentPath = p.dirname(to);
    final parent = _controller.getNode(parentPath);
    if (parent != null) {
      final entity = await createFileEntity(to);
      if (entity == null) {
        return;
      }
      controller = controller.withAddFileNode(entity);
    }

    _updateController(controller);
  }

  FutureOr<void> _onRemoveEntity(String path) {
    _updateController(_controller.withDeleteNode(path));
  }

  FutureOr<void> _onModifyEntity(String path) {

  }

  void _updateController(TreeViewController controller) {
    _controller = controller;
    emit(DirectoryState.opened(directory, controller));
  }

  void _emitRootFolderError() {
    _emitTempError("Cannot perform any actions with root folder");
  }

  void _emitTempError(String message) {
    final currState = state;
    emit(DirectoryState.error(message));
    emit(currState);
  }

  @override
  Future<void> close() {
    _watchSubscription?.cancel();
    return super.close();
  }
}
