import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kPrimaryHeightBetweenW),
          Text("WELCOME TO",
              style: Styles.textStyle30.copyWith(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              )),
          Text("E-krili",
              style: Styles.textStyle30.copyWith(
                  color: Colors.black,
                  fontSize: 65,
                  fontWeight: FontWeight.bold,
                  fontFamily: "BungeeShade")),
        ],
      ),
    );
  }
}
