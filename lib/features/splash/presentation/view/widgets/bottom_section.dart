import 'package:ekrili/core/utils/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AssetsPaths.groupDots),
                Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      AssetsPaths.bottomBackgroundVector,
                      width: 200,
                    )),
              ],
            ),
            Image.asset(AssetsPaths.groupDots2)
          ],
        )
      ],
    );
  }
}
