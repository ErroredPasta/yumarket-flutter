import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/auth/domain/repository/auth_repository.dart';

import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signIn(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
