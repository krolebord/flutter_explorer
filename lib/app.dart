import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explorer/widgets/file_hierarchy.dart';
import 'package:path_provider/path_provider.dart';

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
          appBar: AppBar(
            title: const Text('Home'),
          ),
          body: Row(
            children: const [
              Expanded(child: FileHierarchy()),
              Expanded(child: FileHierarchy())
            ],
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
    return child;
    // return MultiBlocProvider(
    //   providers: [
    //   ],
    //   child: child
    // );
  }
}

