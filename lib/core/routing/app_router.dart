import 'package:finance_app/core/routing/routes.dart';
import 'package:finance_app/features/auth/ui/login_screen/create_new_password_screen.dart';
import 'package:finance_app/features/auth/ui/login_screen/forget_password_screen.dart';
import 'package:finance_app/features/auth/ui/login_screen/login_screen.dart';
import 'package:finance_app/features/auth/ui/login_screen/password_changed_screen.dart';
import 'package:finance_app/features/auth/ui/register_screen/ui/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: Routes.createNewPasswordScreen,
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

      GoRoute(
        path: Routes.registerScreen,
        name: Routes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: Routes.forgetPasswordScreen,
        name: Routes.forgetPasswordScreen,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: Routes.passwordChangedScreen,
        name: Routes.passwordChangedScreen,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
      GoRoute(
        path: Routes.createNewPasswordScreen,
        name: Routes.createNewPasswordScreen,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),


    ]
  );
}