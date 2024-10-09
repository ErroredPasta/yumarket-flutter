import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../core/ui/bloc/ui_state.dart';
import 'component/auto_sign_in_checkbox.dart';
import 'component/email_text_field.dart';
import 'component/find_password_button.dart';
import 'component/password_text_field.dart';
import 'component/sign_in_button.dart';
import 'component/sign_up_button.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_ui_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final LoginBloc bloc = GetIt.I.get();

    bloc.addEvent(const TryAutoSignIn());

    return BlocListener<LoginBloc, UiState<LoginUiState>>(
      bloc: bloc,
      listener: (context, state) {
        final storeId = state.data.storeId;

        if (storeId == null) return;

        final isAutoSignInChecked = state.data.isAutoSignInChecked;

        if (isAutoSignInChecked) bloc.addEvent(SaveStoreId(storeId));

        GetIt.I.registerFactory(() => storeId, instanceName: 'storeId');
        context.go('/orders');
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '위드마켓과 \n즐거운 거래해요',
                  style: TextStyle(fontSize: 32),
                ),
              ),
              const SizedBox(height: 24.0),
              EmailTextField(controller: emailController),
              const SizedBox(height: 24.0),
              PasswordTextField(controller: passwordController),
              const SizedBox(height: 24.0),
              BlocBuilder<LoginBloc, UiState<LoginUiState>>(
                bloc: bloc,
                builder: (context, state) {
                  return AutoSignInCheckbox(
                    isChecked: state.data.isAutoSignInChecked,
                    onClick: () {
                      bloc.addEvent(const ToggleAutoSignIn());
                    },
                  );
                },
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                width: double.infinity,
                child: SignInButton(
                  onClick: () => bloc.addEvent(
                    SignIn(emailController.text, passwordController.text),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: SignUpButton(onClick: () {})),
                  Container(
                    width: 2,
                    height: 70,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: FindPasswordButton(onClick: () {}),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 2,
                    color: Colors.grey,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/google.png'),
                    radius: 20,
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/kakao.jpg'),
                    radius: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
