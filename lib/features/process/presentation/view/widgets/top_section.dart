import 'package:ekrili/core/utils/screen_size.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TopSectionInProcess extends StatelessWidget {
  const TopSectionInProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenHeight * 0.11,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            'Rent in Process',
            style: Styles.textStyle30.copyWith(
                fontSize: 20, letterSpacing: 1.8, color: Colors.white),
          )),
    );
  }
}
