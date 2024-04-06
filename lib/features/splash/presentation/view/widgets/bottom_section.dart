import 'package:ekrili/core/utils/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        SlideEffect(
            begin: Offset(0, 3),
            end: Offset(0, 0.1),
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 600))
      ],
      child: Column(
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
              Image.asset(AssetsPaths.groupDots2, width: 290),
            ],
          )
        ],
      ),
    );
  }
}
