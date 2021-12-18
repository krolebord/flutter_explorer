// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hierarchy_path_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HierarchyPathStateTearOff {
  const _$HierarchyPathStateTearOff();

  HierarchyPathEmptyState empty() {
    return const HierarchyPathEmptyState();
  }

  HierarchyPathSetState set(String path) {
    return HierarchyPathSetState(
      path,
    );
  }
}

/// @nodoc
const $HierarchyPathState = _$HierarchyPathStateTearOff();

/// @nodoc
mixin _$HierarchyPathState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String path) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String path)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String path)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyPathEmptyState value) empty,
    required TResult Function(HierarchyPathSetState value) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyPathEmptyState value)? empty,
    TResult Function(HierarchyPathSetState value)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyPathEmptyState value)? empty,
    TResult Function(HierarchyPathSetState value)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HierarchyPathStateCopyWith<$Res> {
  factory $HierarchyPathStateCopyWith(
          HierarchyPathState value, $Res Function(HierarchyPathState) then) =
      _$HierarchyPathStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HierarchyPathStateCopyWithImpl<$Res>
    implements $HierarchyPathStateCopyWith<$Res> {
  _$HierarchyPathStateCopyWithImpl(this._value, this._then);

  final HierarchyPathState _value;
  // ignore: unused_field
  final $Res Function(HierarchyPathState) _then;
}

/// @nodoc
abstract class $HierarchyPathEmptyStateCopyWith<$Res> {
  factory $HierarchyPathEmptyStateCopyWith(HierarchyPathEmptyState value,
          $Res Function(HierarchyPathEmptyState) then) =
      _$HierarchyPathEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HierarchyPathEmptyStateCopyWithImpl<$Res>
    extends _$HierarchyPathStateCopyWithImpl<$Res>
    implements $HierarchyPathEmptyStateCopyWith<$Res> {
  _$HierarchyPathEmptyStateCopyWithImpl(HierarchyPathEmptyState _value,
      $Res Function(HierarchyPathEmptyState) _then)
      : super(_value, (v) => _then(v as HierarchyPathEmptyState));

  @override
  HierarchyPathEmptyState get _value => super._value as HierarchyPathEmptyState;
}

/// @nodoc

class _$HierarchyPathEmptyState implements HierarchyPathEmptyState {
  const _$HierarchyPathEmptyState();

  @override
  String toString() {
    return 'HierarchyPathState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HierarchyPathEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String path) set,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String path)? set,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String path)? set,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyPathEmptyState value) empty,
    required TResult Function(HierarchyPathSetState value) set,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyPathEmptyState value)? empty,
    TResult Function(HierarchyPathSetState value)? set,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyPathEmptyState value)? empty,
    TResult Function(HierarchyPathSetState value)? set,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class HierarchyPathEmptyState implements HierarchyPathState {
  const factory HierarchyPathEmptyState() = _$HierarchyPathEmptyState;
}

/// @nodoc
abstract class $HierarchyPathSetStateCopyWith<$Res> {
  factory $HierarchyPathSetStateCopyWith(HierarchyPathSetState value,
          $Res Function(HierarchyPathSetState) then) =
      _$HierarchyPathSetStateCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$HierarchyPathSetStateCopyWithImpl<$Res>
    extends _$HierarchyPathStateCopyWithImpl<$Res>
    implements $HierarchyPathSetStateCopyWith<$Res> {
  _$HierarchyPathSetStateCopyWithImpl(
      HierarchyPathSetState _value, $Res Function(HierarchyPathSetState) _then)
      : super(_value, (v) => _then(v as HierarchyPathSetState));

  @override
  HierarchyPathSetState get _value => super._value as HierarchyPathSetState;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(HierarchyPathSetState(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HierarchyPathSetState implements HierarchyPathSetState {
  const _$HierarchyPathSetState(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'HierarchyPathState.set(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HierarchyPathSetState &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $HierarchyPathSetStateCopyWith<HierarchyPathSetState> get copyWith =>
      _$HierarchyPathSetStateCopyWithImpl<HierarchyPathSetState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String path) set,
  }) {
    return set(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String path)? set,
  }) {
    return set?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String path)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HierarchyPathEmptyState value) empty,
    required TResult Function(HierarchyPathSetState value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HierarchyPathEmptyState value)? empty,
    TResult Function(HierarchyPathSetState value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HierarchyPathEmptyState value)? empty,
    TResult Function(HierarchyPathSetState value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class HierarchyPathSetState implements HierarchyPathState {
  const factory HierarchyPathSetState(String path) = _$HierarchyPathSetState;

  String get path;
  @JsonKey(ignore: true)
  $HierarchyPathSetStateCopyWith<HierarchyPathSetState> get copyWith =>
      throw _privateConstructorUsedError;
}
