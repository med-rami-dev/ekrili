import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/assets_path.dart';
import 'package:ekrili/core/utils/screen_size.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight * 0.2,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
        ),
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                AssetsPaths.groupDots,
                width: 50,
                height: 50,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text('Hello',
                  style: Styles.textStyle16
                      .copyWith(fontFamily: 'Poppins-Regular')),
              const Text(
                'You can see all the products offered for rent',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "Poppins-Regular"),
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                AssetsPaths.groupDots,
                width: 50,
                height: 50,
              )),
        ],
      ),
    );
  }
}
