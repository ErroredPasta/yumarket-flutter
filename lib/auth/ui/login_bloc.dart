import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/auth/ui/login_event.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';

import '../domain/repository/auth_repository.dart';

@injectable
class LoginBloc extends BaseBloc<String?, LoginEvent> {
  final AuthRepository _repository;

  LoginBloc(this._repository) : super(const UiState(data: null)) {
    on<SignIn>(_signIn);
  }

  void _signIn(SignIn event, Emitter<UiState<String?>> emit) async {
    final storeId = await _repository.signIn(event.email, event.password);
    dataReceived(storeId);
  }
}
