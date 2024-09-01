import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/auth/domain/repository/auth_repository.dart';

import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<String> signIn(String email, String password) async {
    final userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    final uid = userCredential.user!.uid;

    final snapshot = await FirebaseDatabase.instance
        .ref('/marketInfo/$uid')
        .get();

    return snapshot.value as String;
  }
}
