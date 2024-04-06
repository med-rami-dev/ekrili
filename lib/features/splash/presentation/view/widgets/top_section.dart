import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kPrimaryHeightBetweenW),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              AssetsPaths.groupDots,
            ),
          ),
        ),
        Animate(
          effects: const [
            SlideEffect(
                begin: Offset(0, -3),
                end: Offset(0, 0.05),
                delay: Duration(seconds: 1),
                duration: Duration(seconds: 1))
          ],
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              AssetsPaths.appLogo,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
