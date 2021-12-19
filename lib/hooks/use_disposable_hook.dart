import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

T useDisposable<T>({
  required T Function() factory,
  required void Function(T disposable) disposer,
  List<Object>? keys
}) {
  return use(_DisposableHook(
    factory: factory,
    disposer: disposer,
    keys: keys
  ));
}

class _DisposableHook<T> extends Hook<T> {
  final T Function() factory;
  final void Function(T disposable) disposer;

  const _DisposableHook({
    required this.factory,
    required this.disposer,
    List<Object>? keys
  }) : super(keys: keys);

  @override
  _DisposableHookState<T> createState() => _DisposableHookState();
}

class _DisposableHookState<T> extends HookState<T, _DisposableHook<T>> {
  late final T disposable;

  @override
  void initHook() {
    super.initHook();
    disposable = hook.factory();
  }

  @override
  T build(BuildContext context) => disposable;

  @override
  void dispose() {
    hook.disposer(disposable);
    super.dispose();
  }
}
