import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explorer/cubits/menu_actions/menu_action_cubit.dart';
import 'package:flutter_explorer/models/hierarchy_key.dart';
import 'package:flutter_explorer/widgets/file_hierarchy.dart';
import 'package:flutter_explorer/widgets/menu_bar.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Explorer',
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: _RootBlocs(
        child: Scaffold(
          appBar: MenuBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: const [
                Expanded(child: FileHierarchy(name: HierarchyName.left,)),
                VerticalDivider(
                  indent: 24,
                  endIndent: 24,
                ),
                Expanded(child: FileHierarchy(name: HierarchyName.right,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RootBlocs extends StatelessWidget {
  final Widget child;

  const _RootBlocs({
    required this.child,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MenuActionCubit>(
          lazy: false,
          create: (context) => MenuActionCubit(context)
        )
      ],
       child: child
    );
  }
}

