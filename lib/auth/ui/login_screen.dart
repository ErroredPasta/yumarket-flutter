import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/auth/ui/login_bloc.dart';

import 'login_event.dart';

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
    FirebaseAuth.instance
        .idTokenChanges()
        .listen((user) => _navigateAfterLogin(user, context));

    final LoginBloc bloc = GetIt.I.get();

    return Scaffold(
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
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: '이메일',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: '비밀번호',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  bloc.addEvent(
                    SignIn(emailController.text, passwordController.text),
                  );
                },
                child: const Text('로그인'),
              ),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '회원가입',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 2,
                  height: 70,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '비밀번호 찾기',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
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
    );
  }

  void _navigateAfterLogin(User? user, BuildContext context) {
    if (user == null) return;
    context.go('/orders');
  }
}
