import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
class UiState<T> with _$UiState<T> {
  const factory UiState({
    @Default(false) bool isLoading,
    @Default(null) T? data,
    @Default(null) Exception? exception,
  }) = _UiState;
}
