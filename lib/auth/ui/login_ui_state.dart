import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_state.freezed.dart';

@freezed
class LoginUiState with _$LoginUiState {
  factory LoginUiState({
    required bool isAutoSignInChecked,
    @Default(null) String? storeId,
  }) = _LoginUiState;
}