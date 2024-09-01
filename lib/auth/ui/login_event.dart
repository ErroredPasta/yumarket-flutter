import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';

abstract class LoginEvent extends BaseEvent {
  const LoginEvent();
}

class SignIn extends LoginEvent {
  final String email;
  final String password;

  const SignIn (this.email, this.password);
}
