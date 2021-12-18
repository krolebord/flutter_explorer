import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class DirectoriesWatcher {
  final Map<String, DirectoryCubit> _directoryCubits = {};

  DirectoryCubit getBloc(String path) {
    return _directoryCubits.putIfAbsent(
      path,
      () => DirectoryCubit(
        path: path,
        onCanceled: _removeBloc
      )
    );
  }

  void _removeBloc(String path, DirectoryCubit cunit) {
    _directoryCubits
        .remove(path)
        ?.close();
  }
}
