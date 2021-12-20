import 'package:flutter_explorer/widgets/text_editor/cubits/text_selection/text_selection_state.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';

class TextSelectionCubit extends Cubit<TextSelectionState> {
  TextSelectionCubit() : super(const TextSelectionState.none());

  void select(int start, int end) {
    emit(TextSelectionState.select(start: start, end: end));
  }

  void deselect() {
    emit(const TextSelectionState.none());
  }
}