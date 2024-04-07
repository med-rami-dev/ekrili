import 'dart:async';

import 'package:ekrili/core/utils/app_router.dart';
import 'package:ekrili/features/splash/presentation/view/widgets/bottom_section.dart';
import 'package:ekrili/features/splash/presentation/view/widgets/center_section.dart';
import 'package:ekrili/features/splash/presentation/view/widgets/top_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBodyW extends StatefulWidget {
  const SplashBodyW({super.key});

  @override
  State<SplashBodyW> createState() => _SplashBodyWState();
}

class _SplashBodyWState extends State<SplashBodyW>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      GoRouter.of(context).go(AppRouter.registerView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopSection(),
        CenterSection(),
        Spacer(),
        BottomSection(),
      ],
    );
  }
}
