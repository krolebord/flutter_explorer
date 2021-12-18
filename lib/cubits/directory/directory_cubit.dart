import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_explorer/cubits/directory/directory_state.dart';
import 'package:flutter_explorer/helpers/file_system_entity_extensions.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:rxdart/rxdart.dart';
import 'package:watcher/watcher.dart';
import 'package:path/path.dart' as p;

class DirectoryCubit extends Cubit<DirectoryState> {
  final Directory directory;
  final void Function(String path, DirectoryCubit cubit)? onCanceled;

  late TreeViewController _controller;

  DirectoryCubit({
    required String path,
    this.onCanceled
  }) :
        directory = Directory(path),
        super(const DirectoryState.initial()) {
    _init(path);
  }

  @override
  Stream<DirectoryState> get stream {
    return super.stream
      .doOnCancel(() => onCanceled?.call(directory.path, this));
  }

  Future<void> _init(String path) async {
    if (!await directory.exists()) {
      emit(DirectoryState.notFound(path));
      return;
    }

    emit(DirectoryState.loading(path));

    try {
      final files = await directory.list(recursive: true, followLinks: false).toList();
      _updateController(_buildController(files));
    }
    on FileSystemException catch(exception) {
      switch (exception.osError?.errorCode) {
        case 1:
          emit(const DirectoryState.error("Operation not permitted. Full access to the disk required"));
          return;
        default:
          emit(const DirectoryState.error("Unexpected error occurred while listing directory"));
          return;
      }
    }

    emit(DirectoryState.opened(directory, _controller));

    final watcher = DirectoryWatcher(path, pollingDelay: const Duration(seconds: 5));

    watcher.events.listen(_handleFileSystemChange);

    await watcher.ready;
  }

  void _handleFileSystemChange(WatchEvent event) async {
    switch(event.type) {
      case ChangeType.ADD:
        _onAddFile(event.path);
        break;
      case ChangeType.REMOVE:
        _onRemoveFile(event.path);
        break;
      case ChangeType.MODIFY:
        _onModifyFile(event.path);
        break;
    }
  }

  void _onAddFile(String path) async {
    FileSystemEntity entity = File(path);

    if (!await entity.exists()) {
      return;
    }

    final parentPath = p.dirname(path);

    if (parentPath == directory.path) {
      _controller.children.add(entity.toNode());
      _sortNodes(_controller.children);
      _updateController(TreeViewController(children: _controller.children));
      return;
    }

    if(!p.isWithin(directory.path, parentPath)) {
      return;
    }

    var parent = _controller.getNode(parentPath);

    if (parent == null) {
      parent = Directory(parentPath).toNode();
      _updateController(_controller.withAddNode(parentPath, newNode))
      _updateController(_controller.withUpdateNode(entity.path, entity.toNode()));

      _onAddFile(parentPath);
    }

    final updatedController = _controller.withAddNode(
      p.dirname(path),
      entity.toNode()
    );

    parent.children.sort(_nodeCompare);

    _updateController(updatedController);
  }

  void _onRemoveFile(String path) {
    print(path);
    _updateController(_controller.withDeleteNode(path));
  }

  void _onModifyFile(String path) {
    print(path);
  }

  void _updateController(TreeViewController controller) {
    _controller = controller;
    emit(DirectoryState.opened(directory, controller));
  }

  TreeViewController _buildController(List<FileSystemEntity> files) {
    var controller = TreeViewController(
      children: files
        .where((element) => p.dirname(element.path) == directory.path)
        .map((e) => e.toNode())
        .toList()
    );

    for(var file in files) {
      if(p.dirname(file.path) == directory.path) {
        continue;
      }

      controller = controller.withAddNode(p.dirname(file.path), file.toNode());
    }

    _sortNodes(controller.children);

    return controller;
  }

  static void _sortNodes(List<Node<dynamic>> nodes) {
    if(nodes.isEmpty) {
      return;
    }

    nodes.sort(_nodeCompare);

    for(var node in nodes) {
      _sortNodes(node.children);
    }
  }

  static int _nodeCompare(Node<dynamic> a, Node<dynamic> b) {
    if (a.data is Directory && b.data is File) {
      return -1;
    }

    if (a.data is File && b.data is Directory) {
      return 1;
    }

    return (a.data as FileSystemEntity).path.compareTo((b.data as FileSystemEntity).path);
  }
}
