import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_selection_state.freezed.dart';

@freezed
class TextSelectionState with _$TextSelectionState {
  const factory TextSelectionState.none() = TextSelectionNoneState;
  const factory TextSelectionState.select({
    required int start,
    required int end
  }) = TextSelectionSelectState;
}