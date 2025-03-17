import 'package:finance_app/core/routing/routes.dart';
import 'package:finance_app/features/auth/ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: Routes.onBoardingScreen,
    routes: [
      GoRoute(
        path: Routes.onBoardingScreen,
        name: Routes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        name: Routes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),

    ]
  );
}