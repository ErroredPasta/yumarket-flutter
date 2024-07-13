import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/di/init_injection.dart';
import 'package:yumarket_flutter/firebase_options.dart';
import 'package:yumarket_flutter/core/ui/theme/theme.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_screen.dart';

import 'item_manage/ui/item_list/item_manage_screen.dart';
import 'order/ui/order_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const YuMarketApp());
}

class YuMarketApp extends StatelessWidget {
  const YuMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MaterialTheme(Theme.of(context).textTheme);

    return SafeArea(
      child: MaterialApp.router(
        theme: theme.light(),
        darkTheme: theme.dark(),
        routerConfig: _goRouter,
      ),
    );
  }
}

final _goRouter = GoRouter(
  initialLocation: '/orders',
  routes: [
    GoRoute(
      path: '/orders',
      builder: (context, state) => const OrderScreen(),
    ),
    GoRoute(
      path: '/items',
      builder: (context, state) => const ItemManageScreen(),
    ),
    GoRoute(
      path: '/items/add',
      builder: (context, state) => const ItemAddScreen(),
    ),
  ],
);
