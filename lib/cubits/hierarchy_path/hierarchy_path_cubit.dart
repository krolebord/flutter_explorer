import 'package:bloc/bloc.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter_explorer/cubits/hierarchy_path/hierarchy_path_state.dart';

class HierarchyPathCubit extends Cubit<HierarchyPathState> {
  HierarchyPathCubit() : super(const HierarchyPathState.empty());

  Future<void> setPath(String path) async {
    emit(HierarchyPathState.set(path));
  }

  Future<void> openPath() async {
    var directoryPath = await getDirectoryPath();

    if (directoryPath == null) {
      emit(const HierarchyPathState.empty());
      return;
    }

    await setPath(directoryPath);
  }
}
