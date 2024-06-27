import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/ui/screen/home/order_screen.dart';
import 'package:yumarket_flutter/ui/theme/theme.dart';

void main() {
  runApp(const YuMarketApp());
}

class YuMarketApp extends StatelessWidget {
  const YuMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MaterialTheme(Theme.of(context).textTheme);

    return MaterialApp.router(
      theme: theme.light(),
      darkTheme: theme.dark(),
      routerConfig: _goRouter,
    );
  }
}

final _goRouter = GoRouter(
  initialLocation: '/orders',
  routes: [
    GoRoute(
      path: '/orders',
      builder: (context, state) => const OrderScreen(),
    )
  ],
);
