import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
class UiState<T> with _$UiState<T> {
  const factory UiState({
    @Default(false) bool isLoading,
    required T data,
    @Default(null) Exception? exception,
  }) = _UiState;
}
