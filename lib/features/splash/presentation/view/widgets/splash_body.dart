import 'package:ekrili/features/splash/presentation/view/widgets/bottom_section.dart';
import 'package:ekrili/features/splash/presentation/view/widgets/center_section.dart';
import 'package:ekrili/features/splash/presentation/view/widgets/top_section.dart';
import 'package:flutter/material.dart';

class SplashBodyW extends StatelessWidget {
  const SplashBodyW({super.key});

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
