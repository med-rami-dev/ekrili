import 'package:ekrili/features/splash/presentation/view/splash_view.dart';
import 'package:ekrili/main_routing_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const initial = '/';
  static const homeView = '/home';
  static const mainRoutingView = '/MainRoutingView';
  static const loginView = '/auth/login';
  static const bookDetailsView = '/auth/register';
  static const searchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: initial,
      pageBuilder: (context, state) =>
          const MaterialPage(child: SplashView()),
    ),
    GoRoute(
      path: mainRoutingView,
      pageBuilder: (context, state) => const MaterialPage(child: MainRoutingView()),
    ),
  ]);
}
