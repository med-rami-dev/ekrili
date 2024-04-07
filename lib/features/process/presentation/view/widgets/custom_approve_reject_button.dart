import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonAcceptReject extends StatelessWidget {
  final Function() onPressed;
  final String text;
  Color? color;
  CustomButtonAcceptReject(
      {super.key, required this.onPressed, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 50,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(9),
              topRight: Radius.circular(9),
            )),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        onPressed: onPressed,
        child: Text(text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}
