import 'package:ekrili/features/auth/presentation/view/login_view.dart';
import 'package:ekrili/features/auth/presentation/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const initial = '/';
  static const homeView = '/home';
  static const loginView = '/auth/login';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: initial,
      pageBuilder: (context, state) =>
          const MaterialPage(child: RegisterView()),
    ),
  ]);
}
