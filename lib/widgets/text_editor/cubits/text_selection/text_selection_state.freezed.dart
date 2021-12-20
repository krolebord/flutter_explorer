// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextSelectionStateTearOff {
  const _$TextSelectionStateTearOff();

  TextSelectionNoneState none() {
    return const TextSelectionNoneState();
  }

  TextSelectionSelectState select({required int start, required int end}) {
    return TextSelectionSelectState(
      start: start,
      end: end,
    );
  }
}

/// @nodoc
const $TextSelectionState = _$TextSelectionStateTearOff();

/// @nodoc
mixin _$TextSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int start, int end) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int start, int end)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int start, int end)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextSelectionNoneState value) none,
    required TResult Function(TextSelectionSelectState value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextSelectionNoneState value)? none,
    TResult Function(TextSelectionSelectState value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextSelectionNoneState value)? none,
    TResult Function(TextSelectionSelectState value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextSelectionStateCopyWith<$Res> {
  factory $TextSelectionStateCopyWith(
          TextSelectionState value, $Res Function(TextSelectionState) then) =
      _$TextSelectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TextSelectionStateCopyWithImpl<$Res>
    implements $TextSelectionStateCopyWith<$Res> {
  _$TextSelectionStateCopyWithImpl(this._value, this._then);

  final TextSelectionState _value;
  // ignore: unused_field
  final $Res Function(TextSelectionState) _then;
}

/// @nodoc
abstract class $TextSelectionNoneStateCopyWith<$Res> {
  factory $TextSelectionNoneStateCopyWith(TextSelectionNoneState value,
          $Res Function(TextSelectionNoneState) then) =
      _$TextSelectionNoneStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TextSelectionNoneStateCopyWithImpl<$Res>
    extends _$TextSelectionStateCopyWithImpl<$Res>
    implements $TextSelectionNoneStateCopyWith<$Res> {
  _$TextSelectionNoneStateCopyWithImpl(TextSelectionNoneState _value,
      $Res Function(TextSelectionNoneState) _then)
      : super(_value, (v) => _then(v as TextSelectionNoneState));

  @override
  TextSelectionNoneState get _value => super._value as TextSelectionNoneState;
}

/// @nodoc

class _$TextSelectionNoneState
    with DiagnosticableTreeMixin
    implements TextSelectionNoneState {
  const _$TextSelectionNoneState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextSelectionState.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TextSelectionState.none'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TextSelectionNoneState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int start, int end) select,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int start, int end)? select,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int start, int end)? select,
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
    required TResult Function(TextSelectionNoneState value) none,
    required TResult Function(TextSelectionSelectState value) select,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextSelectionNoneState value)? none,
    TResult Function(TextSelectionSelectState value)? select,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextSelectionNoneState value)? none,
    TResult Function(TextSelectionSelectState value)? select,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class TextSelectionNoneState implements TextSelectionState {
  const factory TextSelectionNoneState() = _$TextSelectionNoneState;
}

/// @nodoc
abstract class $TextSelectionSelectStateCopyWith<$Res> {
  factory $TextSelectionSelectStateCopyWith(TextSelectionSelectState value,
          $Res Function(TextSelectionSelectState) then) =
      _$TextSelectionSelectStateCopyWithImpl<$Res>;
  $Res call({int start, int end});
}

/// @nodoc
class _$TextSelectionSelectStateCopyWithImpl<$Res>
    extends _$TextSelectionStateCopyWithImpl<$Res>
    implements $TextSelectionSelectStateCopyWith<$Res> {
  _$TextSelectionSelectStateCopyWithImpl(TextSelectionSelectState _value,
      $Res Function(TextSelectionSelectState) _then)
      : super(_value, (v) => _then(v as TextSelectionSelectState));

  @override
  TextSelectionSelectState get _value =>
      super._value as TextSelectionSelectState;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(TextSelectionSelectState(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TextSelectionSelectState
    with DiagnosticableTreeMixin
    implements TextSelectionSelectState {
  const _$TextSelectionSelectState({required this.start, required this.end});

  @override
  final int start;
  @override
  final int end;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextSelectionState.select(start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextSelectionState.select'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextSelectionSelectState &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  $TextSelectionSelectStateCopyWith<TextSelectionSelectState> get copyWith =>
      _$TextSelectionSelectStateCopyWithImpl<TextSelectionSelectState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int start, int end) select,
  }) {
    return select(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int start, int end)? select,
  }) {
    return select?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int start, int end)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextSelectionNoneState value) none,
    required TResult Function(TextSelectionSelectState value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextSelectionNoneState value)? none,
    TResult Function(TextSelectionSelectState value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextSelectionNoneState value)? none,
    TResult Function(TextSelectionSelectState value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class TextSelectionSelectState implements TextSelectionState {
  const factory TextSelectionSelectState(
      {required int start, required int end}) = _$TextSelectionSelectState;

  int get start;
  int get end;
  @JsonKey(ignore: true)
  $TextSelectionSelectStateCopyWith<TextSelectionSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}
