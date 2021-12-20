import 'dart:io';
import 'package:flutter_explorer/actions/file_entity_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_state.freezed.dart';

@freezed
class SelectionState with _$SelectionState {
  const factory SelectionState.none() = SelectionNoneState;
  const factory SelectionState.entity(List<FileEntityAction> actions) = SelectionEntityState;
}