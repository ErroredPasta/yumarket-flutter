import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/auth/ui/login_screen.dart';
import 'package:yumarket_flutter/di/init_injection.dart';
import 'package:yumarket_flutter/firebase_options.dart';
import 'package:yumarket_flutter/core/ui/theme/theme.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_screen.dart';
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_screen.dart';
import 'package:yumarket_flutter/review/ui/review_screen.dart';

import 'item_manage/domain/model/item.dart';
import 'item_manage/ui/item_list/item_manage_screen.dart';
import 'order/ui/order_screen.dart';

void main() async {
  //
  // FIXME
  // Do not run web app with flutter 3.24.0
  //
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
  initialLocation: '/login',
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
    GoRoute(
      path: '/items/update',
      builder: (context, state) {
        final item = state.extra as Item;
        return ItemUpdateScreen(item);
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/reviews',
      builder: (context, state) => const ReviewScreen(),
    )
  ],
);
