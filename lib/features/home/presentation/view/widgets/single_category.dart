import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String imageUrl;
  const Category({
    super.key,
    required this.imageUrl,
  });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //? On Tap Functionality Here
      },
      child: Container(
        alignment: Alignment.center,
        width: ScreenSize.screenWidth * 0.35,
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Image.asset(
                  widget.imageUrl,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
