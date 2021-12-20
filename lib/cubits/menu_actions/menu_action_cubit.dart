import 'package:flutter/cupertino.dart';
import 'package:flutter_explorer/cubits/menu_actions/hierarchy_command.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';

class MenuActionCubit extends Cubit<HierarchyCommand> {
  final BuildContext context;

  MenuActionCubit(this.context) : super(const HierarchyCommand.none()) {}

  void _onAbout() {

  }
}