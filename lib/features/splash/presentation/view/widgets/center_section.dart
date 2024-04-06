import 'package:ekrili/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Animate(
          effects: const [
            SlideEffect(
                begin: Offset(0, 3),
                end: Offset(0, 0.5),
                delay: Duration(milliseconds: 600),
                duration: Duration(milliseconds: 600))
          ],
          child: Text("E-krili",
              style: Styles.textStyle30.copyWith(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins-Regular")),
        ),
      ),
    );
  }
}
