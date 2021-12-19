// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectionStateTearOff {
  const _$SelectionStateTearOff();

  SelectionNoneState none() {
    return const SelectionNoneState();
  }

  SelectionEntityState entity(
      List<FileEntityAction<FileSystemEntity>> actions) {
    return SelectionEntityState(
      actions,
    );
  }
}

/// @nodoc
const $SelectionState = _$SelectionStateTearOff();

/// @nodoc
mixin _$SelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<FileEntityAction<FileSystemEntity>> actions)
        entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<FileEntityAction<FileSystemEntity>> actions)? entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<FileEntityAction<FileSystemEntity>> actions)? entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectionNoneState value) none,
    required TResult Function(SelectionEntityState value) entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectionNoneState value)? none,
    TResult Function(SelectionEntityState value)? entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectionNoneState value)? none,
    TResult Function(SelectionEntityState value)? entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionStateCopyWith<$Res> {
  factory $SelectionStateCopyWith(
          SelectionState value, $Res Function(SelectionState) then) =
      _$SelectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectionStateCopyWithImpl<$Res>
    implements $SelectionStateCopyWith<$Res> {
  _$SelectionStateCopyWithImpl(this._value, this._then);

  final SelectionState _value;
  // ignore: unused_field
  final $Res Function(SelectionState) _then;
}

/// @nodoc
abstract class $SelectionNoneStateCopyWith<$Res> {
  factory $SelectionNoneStateCopyWith(
          SelectionNoneState value, $Res Function(SelectionNoneState) then) =
      _$SelectionNoneStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectionNoneStateCopyWithImpl<$Res>
    extends _$SelectionStateCopyWithImpl<$Res>
    implements $SelectionNoneStateCopyWith<$Res> {
  _$SelectionNoneStateCopyWithImpl(
      SelectionNoneState _value, $Res Function(SelectionNoneState) _then)
      : super(_value, (v) => _then(v as SelectionNoneState));

  @override
  SelectionNoneState get _value => super._value as SelectionNoneState;
}

/// @nodoc

class _$SelectionNoneState implements SelectionNoneState {
  const _$SelectionNoneState();

  @override
  String toString() {
    return 'SelectionState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SelectionNoneState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<FileEntityAction<FileSystemEntity>> actions)
        entity,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<FileEntityAction<FileSystemEntity>> actions)? entity,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<FileEntityAction<FileSystemEntity>> actions)? entity,
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
    required TResult Function(SelectionNoneState value) none,
    required TResult Function(SelectionEntityState value) entity,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectionNoneState value)? none,
    TResult Function(SelectionEntityState value)? entity,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectionNoneState value)? none,
    TResult Function(SelectionEntityState value)? entity,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class SelectionNoneState implements SelectionState {
  const factory SelectionNoneState() = _$SelectionNoneState;
}

/// @nodoc
abstract class $SelectionEntityStateCopyWith<$Res> {
  factory $SelectionEntityStateCopyWith(SelectionEntityState value,
          $Res Function(SelectionEntityState) then) =
      _$SelectionEntityStateCopyWithImpl<$Res>;
  $Res call({List<FileEntityAction<FileSystemEntity>> actions});
}

/// @nodoc
class _$SelectionEntityStateCopyWithImpl<$Res>
    extends _$SelectionStateCopyWithImpl<$Res>
    implements $SelectionEntityStateCopyWith<$Res> {
  _$SelectionEntityStateCopyWithImpl(
      SelectionEntityState _value, $Res Function(SelectionEntityState) _then)
      : super(_value, (v) => _then(v as SelectionEntityState));

  @override
  SelectionEntityState get _value => super._value as SelectionEntityState;

  @override
  $Res call({
    Object? actions = freezed,
  }) {
    return _then(SelectionEntityState(
      actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<FileEntityAction<FileSystemEntity>>,
    ));
  }
}

/// @nodoc

class _$SelectionEntityState implements SelectionEntityState {
  const _$SelectionEntityState(this.actions);

  @override
  final List<FileEntityAction<FileSystemEntity>> actions;

  @override
  String toString() {
    return 'SelectionState.entity(actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectionEntityState &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(actions));

  @JsonKey(ignore: true)
  @override
  $SelectionEntityStateCopyWith<SelectionEntityState> get copyWith =>
      _$SelectionEntityStateCopyWithImpl<SelectionEntityState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<FileEntityAction<FileSystemEntity>> actions)
        entity,
  }) {
    return entity(actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<FileEntityAction<FileSystemEntity>> actions)? entity,
  }) {
    return entity?.call(actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<FileEntityAction<FileSystemEntity>> actions)? entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectionNoneState value) none,
    required TResult Function(SelectionEntityState value) entity,
  }) {
    return entity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectionNoneState value)? none,
    TResult Function(SelectionEntityState value)? entity,
  }) {
    return entity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectionNoneState value)? none,
    TResult Function(SelectionEntityState value)? entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }
}

abstract class SelectionEntityState implements SelectionState {
  const factory SelectionEntityState(
          List<FileEntityAction<FileSystemEntity>> actions) =
      _$SelectionEntityState;

  List<FileEntityAction<FileSystemEntity>> get actions;
  @JsonKey(ignore: true)
  $SelectionEntityStateCopyWith<SelectionEntityState> get copyWith =>
      throw _privateConstructorUsedError;
}
