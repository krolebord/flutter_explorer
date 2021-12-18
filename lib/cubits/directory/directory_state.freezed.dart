// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'directory_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DirectoryStateTearOff {
  const _$DirectoryStateTearOff();

  DirectoryInitialState initial() {
    return const DirectoryInitialState();
  }

  DirectoryLoadingState loading(String path) {
    return DirectoryLoadingState(
      path,
    );
  }

  DirectoryOpenedState opened(
      Directory directory, TreeViewController controller) {
    return DirectoryOpenedState(
      directory,
      controller,
    );
  }

  DirectoryNotFoundState notFound(String path) {
    return DirectoryNotFoundState(
      path,
    );
  }

  DirectoryErrorState error(String message) {
    return DirectoryErrorState(
      message,
    );
  }
}

/// @nodoc
const $DirectoryState = _$DirectoryStateTearOff();

/// @nodoc
mixin _$DirectoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) loading,
    required TResult Function(
            Directory directory, TreeViewController controller)
        opened,
    required TResult Function(String path) notFound,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DirectoryInitialState value) initial,
    required TResult Function(DirectoryLoadingState value) loading,
    required TResult Function(DirectoryOpenedState value) opened,
    required TResult Function(DirectoryNotFoundState value) notFound,
    required TResult Function(DirectoryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryStateCopyWith<$Res> {
  factory $DirectoryStateCopyWith(
          DirectoryState value, $Res Function(DirectoryState) then) =
      _$DirectoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DirectoryStateCopyWithImpl<$Res>
    implements $DirectoryStateCopyWith<$Res> {
  _$DirectoryStateCopyWithImpl(this._value, this._then);

  final DirectoryState _value;
  // ignore: unused_field
  final $Res Function(DirectoryState) _then;
}

/// @nodoc
abstract class $DirectoryInitialStateCopyWith<$Res> {
  factory $DirectoryInitialStateCopyWith(DirectoryInitialState value,
          $Res Function(DirectoryInitialState) then) =
      _$DirectoryInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DirectoryInitialStateCopyWithImpl<$Res>
    extends _$DirectoryStateCopyWithImpl<$Res>
    implements $DirectoryInitialStateCopyWith<$Res> {
  _$DirectoryInitialStateCopyWithImpl(
      DirectoryInitialState _value, $Res Function(DirectoryInitialState) _then)
      : super(_value, (v) => _then(v as DirectoryInitialState));

  @override
  DirectoryInitialState get _value => super._value as DirectoryInitialState;
}

/// @nodoc

class _$DirectoryInitialState implements DirectoryInitialState {
  const _$DirectoryInitialState();

  @override
  String toString() {
    return 'DirectoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DirectoryInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) loading,
    required TResult Function(
            Directory directory, TreeViewController controller)
        opened,
    required TResult Function(String path) notFound,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DirectoryInitialState value) initial,
    required TResult Function(DirectoryLoadingState value) loading,
    required TResult Function(DirectoryOpenedState value) opened,
    required TResult Function(DirectoryNotFoundState value) notFound,
    required TResult Function(DirectoryErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DirectoryInitialState implements DirectoryState {
  const factory DirectoryInitialState() = _$DirectoryInitialState;
}

/// @nodoc
abstract class $DirectoryLoadingStateCopyWith<$Res> {
  factory $DirectoryLoadingStateCopyWith(DirectoryLoadingState value,
          $Res Function(DirectoryLoadingState) then) =
      _$DirectoryLoadingStateCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$DirectoryLoadingStateCopyWithImpl<$Res>
    extends _$DirectoryStateCopyWithImpl<$Res>
    implements $DirectoryLoadingStateCopyWith<$Res> {
  _$DirectoryLoadingStateCopyWithImpl(
      DirectoryLoadingState _value, $Res Function(DirectoryLoadingState) _then)
      : super(_value, (v) => _then(v as DirectoryLoadingState));

  @override
  DirectoryLoadingState get _value => super._value as DirectoryLoadingState;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(DirectoryLoadingState(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectoryLoadingState implements DirectoryLoadingState {
  const _$DirectoryLoadingState(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'DirectoryState.loading(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DirectoryLoadingState &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $DirectoryLoadingStateCopyWith<DirectoryLoadingState> get copyWith =>
      _$DirectoryLoadingStateCopyWithImpl<DirectoryLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) loading,
    required TResult Function(
            Directory directory, TreeViewController controller)
        opened,
    required TResult Function(String path) notFound,
    required TResult Function(String message) error,
  }) {
    return loading(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
  }) {
    return loading?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DirectoryInitialState value) initial,
    required TResult Function(DirectoryLoadingState value) loading,
    required TResult Function(DirectoryOpenedState value) opened,
    required TResult Function(DirectoryNotFoundState value) notFound,
    required TResult Function(DirectoryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DirectoryLoadingState implements DirectoryState {
  const factory DirectoryLoadingState(String path) = _$DirectoryLoadingState;

  String get path;
  @JsonKey(ignore: true)
  $DirectoryLoadingStateCopyWith<DirectoryLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryOpenedStateCopyWith<$Res> {
  factory $DirectoryOpenedStateCopyWith(DirectoryOpenedState value,
          $Res Function(DirectoryOpenedState) then) =
      _$DirectoryOpenedStateCopyWithImpl<$Res>;
  $Res call({Directory directory, TreeViewController controller});
}

/// @nodoc
class _$DirectoryOpenedStateCopyWithImpl<$Res>
    extends _$DirectoryStateCopyWithImpl<$Res>
    implements $DirectoryOpenedStateCopyWith<$Res> {
  _$DirectoryOpenedStateCopyWithImpl(
      DirectoryOpenedState _value, $Res Function(DirectoryOpenedState) _then)
      : super(_value, (v) => _then(v as DirectoryOpenedState));

  @override
  DirectoryOpenedState get _value => super._value as DirectoryOpenedState;

  @override
  $Res call({
    Object? directory = freezed,
    Object? controller = freezed,
  }) {
    return _then(DirectoryOpenedState(
      directory == freezed
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory,
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TreeViewController,
    ));
  }
}

/// @nodoc

class _$DirectoryOpenedState implements DirectoryOpenedState {
  const _$DirectoryOpenedState(this.directory, this.controller);

  @override
  final Directory directory;
  @override
  final TreeViewController controller;

  @override
  String toString() {
    return 'DirectoryState.opened(directory: $directory, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DirectoryOpenedState &&
            const DeepCollectionEquality().equals(other.directory, directory) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(directory),
      const DeepCollectionEquality().hash(controller));

  @JsonKey(ignore: true)
  @override
  $DirectoryOpenedStateCopyWith<DirectoryOpenedState> get copyWith =>
      _$DirectoryOpenedStateCopyWithImpl<DirectoryOpenedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) loading,
    required TResult Function(
            Directory directory, TreeViewController controller)
        opened,
    required TResult Function(String path) notFound,
    required TResult Function(String message) error,
  }) {
    return opened(directory, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
  }) {
    return opened?.call(directory, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(directory, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DirectoryInitialState value) initial,
    required TResult Function(DirectoryLoadingState value) loading,
    required TResult Function(DirectoryOpenedState value) opened,
    required TResult Function(DirectoryNotFoundState value) notFound,
    required TResult Function(DirectoryErrorState value) error,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
  }) {
    return opened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class DirectoryOpenedState implements DirectoryState {
  const factory DirectoryOpenedState(
          Directory directory, TreeViewController controller) =
      _$DirectoryOpenedState;

  Directory get directory;
  TreeViewController get controller;
  @JsonKey(ignore: true)
  $DirectoryOpenedStateCopyWith<DirectoryOpenedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryNotFoundStateCopyWith<$Res> {
  factory $DirectoryNotFoundStateCopyWith(DirectoryNotFoundState value,
          $Res Function(DirectoryNotFoundState) then) =
      _$DirectoryNotFoundStateCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$DirectoryNotFoundStateCopyWithImpl<$Res>
    extends _$DirectoryStateCopyWithImpl<$Res>
    implements $DirectoryNotFoundStateCopyWith<$Res> {
  _$DirectoryNotFoundStateCopyWithImpl(DirectoryNotFoundState _value,
      $Res Function(DirectoryNotFoundState) _then)
      : super(_value, (v) => _then(v as DirectoryNotFoundState));

  @override
  DirectoryNotFoundState get _value => super._value as DirectoryNotFoundState;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(DirectoryNotFoundState(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectoryNotFoundState implements DirectoryNotFoundState {
  const _$DirectoryNotFoundState(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'DirectoryState.notFound(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DirectoryNotFoundState &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $DirectoryNotFoundStateCopyWith<DirectoryNotFoundState> get copyWith =>
      _$DirectoryNotFoundStateCopyWithImpl<DirectoryNotFoundState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) loading,
    required TResult Function(
            Directory directory, TreeViewController controller)
        opened,
    required TResult Function(String path) notFound,
    required TResult Function(String message) error,
  }) {
    return notFound(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
  }) {
    return notFound?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DirectoryInitialState value) initial,
    required TResult Function(DirectoryLoadingState value) loading,
    required TResult Function(DirectoryOpenedState value) opened,
    required TResult Function(DirectoryNotFoundState value) notFound,
    required TResult Function(DirectoryErrorState value) error,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class DirectoryNotFoundState implements DirectoryState {
  const factory DirectoryNotFoundState(String path) = _$DirectoryNotFoundState;

  String get path;
  @JsonKey(ignore: true)
  $DirectoryNotFoundStateCopyWith<DirectoryNotFoundState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryErrorStateCopyWith<$Res> {
  factory $DirectoryErrorStateCopyWith(
          DirectoryErrorState value, $Res Function(DirectoryErrorState) then) =
      _$DirectoryErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DirectoryErrorStateCopyWithImpl<$Res>
    extends _$DirectoryStateCopyWithImpl<$Res>
    implements $DirectoryErrorStateCopyWith<$Res> {
  _$DirectoryErrorStateCopyWithImpl(
      DirectoryErrorState _value, $Res Function(DirectoryErrorState) _then)
      : super(_value, (v) => _then(v as DirectoryErrorState));

  @override
  DirectoryErrorState get _value => super._value as DirectoryErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(DirectoryErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectoryErrorState implements DirectoryErrorState {
  const _$DirectoryErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DirectoryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DirectoryErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $DirectoryErrorStateCopyWith<DirectoryErrorState> get copyWith =>
      _$DirectoryErrorStateCopyWithImpl<DirectoryErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) loading,
    required TResult Function(
            Directory directory, TreeViewController controller)
        opened,
    required TResult Function(String path) notFound,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? loading,
    TResult Function(Directory directory, TreeViewController controller)?
        opened,
    TResult Function(String path)? notFound,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DirectoryInitialState value) initial,
    required TResult Function(DirectoryLoadingState value) loading,
    required TResult Function(DirectoryOpenedState value) opened,
    required TResult Function(DirectoryNotFoundState value) notFound,
    required TResult Function(DirectoryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DirectoryInitialState value)? initial,
    TResult Function(DirectoryLoadingState value)? loading,
    TResult Function(DirectoryOpenedState value)? opened,
    TResult Function(DirectoryNotFoundState value)? notFound,
    TResult Function(DirectoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DirectoryErrorState implements DirectoryState {
  const factory DirectoryErrorState(String message) = _$DirectoryErrorState;

  String get message;
  @JsonKey(ignore: true)
  $DirectoryErrorStateCopyWith<DirectoryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
