import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_coffeashop/core/error/error_page.dart';
import 'package:pos_coffeashop/features/auth/presentation/pages/login_page.dart';
import 'package:pos_coffeashop/features/auth/presentation/pages/register_page.dart';
import 'package:pos_coffeashop/features/home/home_page.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    observers: [CustomNavigatorObserver()],
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
      ),
      GoRoute(
        name: 'register',
        path: '/register',
        pageBuilder: (context, state) =>
            const MaterialPage(child: RegisterPage()),
      ),
    ],
  );
}

class CustomNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    // Add your custom logic here
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    // Optionally add logic for when a route is pushed
    super.didPush(route, previousRoute);
  }
}
