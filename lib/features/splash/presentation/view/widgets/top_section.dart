import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/assets_path.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kPrimaryHeightBetweenW),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            AssetsPaths.appLogo,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              AssetsPaths.groupDots,
            ),
          ),
        ),
      ],
    );
  }
}
