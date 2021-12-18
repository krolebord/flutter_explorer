import 'package:flutter_explorer/cubits/directory/directory_cubit.dart';
import 'package:flutter_explorer/cubits/directory/directory_state.dart';
import 'package:flutter_explorer/helpers/get_service.dart';
import 'package:flutter_explorer/services/directories_watcher.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';

DirectoryState useDirectory(String path) {
  final directoryCubit = useMemoized(
    () => getService<DirectoriesWatcher>().getBloc(path),
    [path]
  );
  return useBloc<DirectoryCubit, DirectoryState>(bloc: directoryCubit);
}