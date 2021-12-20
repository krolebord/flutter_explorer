// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hierarchy_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HierarchyCommandTearOff {
  const _$HierarchyCommandTearOff();

  HierarchyNoneCommand none() {
    return const HierarchyNoneCommand();
  }

  HierarchyPathCommand path(
      {required HierarchyName name,
      required FutureOr<void> Function(HierarchyPathCubit) handle}) {
    return HierarchyPathCommand(
      name: name,
      handle: handle,
    );
  }

  HierarchyDirectoryCommand directory(
      {required HierarchyName name,
      required FutureOr<void> Function(DirectoryCubit) handle}) {
    return HierarchyDirectoryCommand(
      name: name,
      handle: handle,
    );
  }
}

/// @nodoc
const $HierarchyCommand = _$HierarchyCommandTearOff();

/// @nodoc
mixin _$HierarchyCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)
        path,
    required TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyNoneCommand value) none,
    required TResult Function(HierarchyPathCommand value) path,
    required TResult Function(HierarchyDirectoryCommand value) directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HierarchyCommandCopyWith<$Res> {
  factory $HierarchyCommandCopyWith(
          HierarchyCommand value, $Res Function(HierarchyCommand) then) =
      _$HierarchyCommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$HierarchyCommandCopyWithImpl<$Res>
    implements $HierarchyCommandCopyWith<$Res> {
  _$HierarchyCommandCopyWithImpl(this._value, this._then);

  final HierarchyCommand _value;
  // ignore: unused_field
  final $Res Function(HierarchyCommand) _then;
}

/// @nodoc
abstract class $HierarchyNoneCommandCopyWith<$Res> {
  factory $HierarchyNoneCommandCopyWith(HierarchyNoneCommand value,
          $Res Function(HierarchyNoneCommand) then) =
      _$HierarchyNoneCommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$HierarchyNoneCommandCopyWithImpl<$Res>
    extends _$HierarchyCommandCopyWithImpl<$Res>
    implements $HierarchyNoneCommandCopyWith<$Res> {
  _$HierarchyNoneCommandCopyWithImpl(
      HierarchyNoneCommand _value, $Res Function(HierarchyNoneCommand) _then)
      : super(_value, (v) => _then(v as HierarchyNoneCommand));

  @override
  HierarchyNoneCommand get _value => super._value as HierarchyNoneCommand;
}

/// @nodoc

class _$HierarchyNoneCommand implements HierarchyNoneCommand {
  const _$HierarchyNoneCommand();

  @override
  String toString() {
    return 'HierarchyCommand.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HierarchyNoneCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)
        path,
    required TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)
        directory,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyNoneCommand value) none,
    required TResult Function(HierarchyPathCommand value) path,
    required TResult Function(HierarchyDirectoryCommand value) directory,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class HierarchyNoneCommand implements HierarchyCommand {
  const factory HierarchyNoneCommand() = _$HierarchyNoneCommand;
}

/// @nodoc
abstract class $HierarchyPathCommandCopyWith<$Res> {
  factory $HierarchyPathCommandCopyWith(HierarchyPathCommand value,
          $Res Function(HierarchyPathCommand) then) =
      _$HierarchyPathCommandCopyWithImpl<$Res>;
  $Res call(
      {HierarchyName name, FutureOr<void> Function(HierarchyPathCubit) handle});
}

/// @nodoc
class _$HierarchyPathCommandCopyWithImpl<$Res>
    extends _$HierarchyCommandCopyWithImpl<$Res>
    implements $HierarchyPathCommandCopyWith<$Res> {
  _$HierarchyPathCommandCopyWithImpl(
      HierarchyPathCommand _value, $Res Function(HierarchyPathCommand) _then)
      : super(_value, (v) => _then(v as HierarchyPathCommand));

  @override
  HierarchyPathCommand get _value => super._value as HierarchyPathCommand;

  @override
  $Res call({
    Object? name = freezed,
    Object? handle = freezed,
  }) {
    return _then(HierarchyPathCommand(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HierarchyName,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as FutureOr<void> Function(HierarchyPathCubit),
    ));
  }
}

/// @nodoc

class _$HierarchyPathCommand implements HierarchyPathCommand {
  const _$HierarchyPathCommand({required this.name, required this.handle});

  @override
  final HierarchyName name;
  @override
  final FutureOr<void> Function(HierarchyPathCubit) handle;

  @override
  String toString() {
    return 'HierarchyCommand.path(name: $name, handle: $handle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HierarchyPathCommand &&
            const DeepCollectionEquality().equals(other.name, name) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(name), handle);

  @JsonKey(ignore: true)
  @override
  $HierarchyPathCommandCopyWith<HierarchyPathCommand> get copyWith =>
      _$HierarchyPathCommandCopyWithImpl<HierarchyPathCommand>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)
        path,
    required TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)
        directory,
  }) {
    return path(name, handle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
  }) {
    return path?.call(name, handle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
    required TResult orElse(),
  }) {
    if (path != null) {
      return path(name, handle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyNoneCommand value) none,
    required TResult Function(HierarchyPathCommand value) path,
    required TResult Function(HierarchyDirectoryCommand value) directory,
  }) {
    return path(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
  }) {
    return path?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
    required TResult orElse(),
  }) {
    if (path != null) {
      return path(this);
    }
    return orElse();
  }
}

abstract class HierarchyPathCommand implements HierarchyCommand {
  const factory HierarchyPathCommand(
          {required HierarchyName name,
          required FutureOr<void> Function(HierarchyPathCubit) handle}) =
      _$HierarchyPathCommand;

  HierarchyName get name;
  FutureOr<void> Function(HierarchyPathCubit) get handle;
  @JsonKey(ignore: true)
  $HierarchyPathCommandCopyWith<HierarchyPathCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HierarchyDirectoryCommandCopyWith<$Res> {
  factory $HierarchyDirectoryCommandCopyWith(HierarchyDirectoryCommand value,
          $Res Function(HierarchyDirectoryCommand) then) =
      _$HierarchyDirectoryCommandCopyWithImpl<$Res>;
  $Res call(
      {HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle});
}

/// @nodoc
class _$HierarchyDirectoryCommandCopyWithImpl<$Res>
    extends _$HierarchyCommandCopyWithImpl<$Res>
    implements $HierarchyDirectoryCommandCopyWith<$Res> {
  _$HierarchyDirectoryCommandCopyWithImpl(HierarchyDirectoryCommand _value,
      $Res Function(HierarchyDirectoryCommand) _then)
      : super(_value, (v) => _then(v as HierarchyDirectoryCommand));

  @override
  HierarchyDirectoryCommand get _value =>
      super._value as HierarchyDirectoryCommand;

  @override
  $Res call({
    Object? name = freezed,
    Object? handle = freezed,
  }) {
    return _then(HierarchyDirectoryCommand(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HierarchyName,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as FutureOr<void> Function(DirectoryCubit),
    ));
  }
}

/// @nodoc

class _$HierarchyDirectoryCommand implements HierarchyDirectoryCommand {
  const _$HierarchyDirectoryCommand({required this.name, required this.handle});

  @override
  final HierarchyName name;
  @override
  final FutureOr<void> Function(DirectoryCubit) handle;

  @override
  String toString() {
    return 'HierarchyCommand.directory(name: $name, handle: $handle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HierarchyDirectoryCommand &&
            const DeepCollectionEquality().equals(other.name, name) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(name), handle);

  @JsonKey(ignore: true)
  @override
  $HierarchyDirectoryCommandCopyWith<HierarchyDirectoryCommand> get copyWith =>
      _$HierarchyDirectoryCommandCopyWithImpl<HierarchyDirectoryCommand>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)
        path,
    required TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)
        directory,
  }) {
    return directory(name, handle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
  }) {
    return directory?.call(name, handle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(HierarchyName name,
            FutureOr<void> Function(HierarchyPathCubit) handle)?
        path,
    TResult Function(
            HierarchyName name, FutureOr<void> Function(DirectoryCubit) handle)?
        directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(name, handle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyNoneCommand value) none,
    required TResult Function(HierarchyPathCommand value) path,
    required TResult Function(HierarchyDirectoryCommand value) directory,
  }) {
    return directory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
  }) {
    return directory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyNoneCommand value)? none,
    TResult Function(HierarchyPathCommand value)? path,
    TResult Function(HierarchyDirectoryCommand value)? directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(this);
    }
    return orElse();
  }
}

abstract class HierarchyDirectoryCommand implements HierarchyCommand {
  const factory HierarchyDirectoryCommand(
          {required HierarchyName name,
          required FutureOr<void> Function(DirectoryCubit) handle}) =
      _$HierarchyDirectoryCommand;

  HierarchyName get name;
  FutureOr<void> Function(DirectoryCubit) get handle;
  @JsonKey(ignore: true)
  $HierarchyDirectoryCommandCopyWith<HierarchyDirectoryCommand> get copyWith =>
      throw _privateConstructorUsedError;
}
