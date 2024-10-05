import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/auth/ui/login_event.dart';
import 'package:yumarket_flutter/auth/ui/login_ui_state.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/preference/domain/preference.dart';

import '../domain/repository/auth_repository.dart';

@injectable
class LoginBloc extends BaseBloc<LoginUiState, LoginEvent> {
  final AuthRepository _repository;
  final Preference _preference;

  LoginBloc(this._repository, this._preference)
      : super(UiState(data: LoginUiState(isAutoSignInChecked: false))) {
    on<SignIn>(_signIn);
    on<ToggleAutoSignIn>(_toggleAutoSignIn);
    on<SaveStoreId>(_saveStoreId);
    on<TryAutoSignIn>(_trySignIn);
  }

  void _signIn(SignIn event, Emitter<UiState<LoginUiState>> emit) async {
    final storeId = await _repository.signIn(event.email, event.password);
    dataReceived(state.data.copyWith(storeId: storeId));
  }

  void _toggleAutoSignIn(
    ToggleAutoSignIn event,
    Emitter<UiState<LoginUiState>> emit,
  ) {
    dataReceived(
      state.data.copyWith(isAutoSignInChecked: !state.data.isAutoSignInChecked),
    );
  }

  void _saveStoreId(
    SaveStoreId event,
    Emitter<UiState<LoginUiState>> emit,
  ) {
    _preference.saveStoreId(event.storeId);
  }

  void _trySignIn(
    TryAutoSignIn event,
    Emitter<UiState<LoginUiState>> emit,
  ) async {
    final isAutoSignInEnabled = await _preference.isAutoSignInEnabled;

    if (!isAutoSignInEnabled) return;

    final savedStoreId = await _preference.savedStoreId;

    dataReceived(state.data.copyWith(storeId: savedStoreId));
  }
}
