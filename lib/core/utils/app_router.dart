import 'package:ekrili/features/auth/presentation/view/login_view.dart';
import 'package:ekrili/features/auth/presentation/view/register_view.dart';
import 'package:ekrili/features/auth/presentation/view/reset_password_view.dart';
import 'package:ekrili/features/listing/presentation/view/listing_details_view.dart';
import 'package:ekrili/features/splash/presentation/view/splash_view.dart';
import 'package:ekrili/main_routing_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  //* Routes Configuration
  static const initial = '/';
  static const homeView = '/home';
  static const mainRoutingView = '/MainRoutingView';
  static const loginView = '/auth/login';
  static const registerView = '/auth/register';
  static const searchView = '/searchView';
  static const listingDetails = '/listingDetailsView';
  static const forgetPasswordView = '/forgetPasswordView';
  //? private Navigators Keys:
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  //* Routes Configuration
  static final router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: initial,
      routes: [
        GoRoute(
          path: initial,
          pageBuilder: (context, state) =>
              const MaterialPage(child: SplashView()),
        ),
        GoRoute(
          path: mainRoutingView,
          pageBuilder: (context, state) =>
              const MaterialPage(child: MainRoutingView()),
        ),
        GoRoute(
          path: loginView,
          pageBuilder: (context, state) =>
              const MaterialPage(child: LoginView()),
        ),
        GoRoute(
          path: registerView,
          pageBuilder: (context, state) =>
              const MaterialPage(child: RegisterView()),
        ),
        GoRoute(
          path: listingDetails,
          pageBuilder: (context, state) =>
              const MaterialPage(child: ListingDetailsView()),
        ),
        GoRoute(
          path: forgetPasswordView,
          pageBuilder: (context, state) =>
              const MaterialPage(child: ResetPasswordView()),
        ),
      ]);
}
