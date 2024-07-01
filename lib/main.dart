import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/di/init_injection.dart';
import 'package:yumarket_flutter/firebase_options.dart';
import 'package:yumarket_flutter/ui/screen/home/order_screen.dart';
import 'package:yumarket_flutter/ui/theme/theme.dart';

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
