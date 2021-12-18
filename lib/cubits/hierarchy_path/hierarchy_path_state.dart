import 'package:freezed_annotation/freezed_annotation.dart';

part 'hierarchy_path_state.freezed.dart';

@freezed
class HierarchyPathState with _$HierarchyPathState {
  const factory HierarchyPathState.empty() = HierarchyPathEmptyState;
  const factory HierarchyPathState.set(String path) = HierarchyPathSetState;
}
