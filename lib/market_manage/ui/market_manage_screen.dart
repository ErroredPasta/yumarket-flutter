import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class MarketManageScreen extends StatelessWidget {
  const MarketManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('마켓 관리')),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              _onSignOutClick(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  '로그아웃',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onSignOutClick(BuildContext context) {
    GetIt.I.unregister<String>(instanceName: 'storeId');
    FirebaseAuth.instance.signOut().then((_) => context.go('/login'));
  }
}
