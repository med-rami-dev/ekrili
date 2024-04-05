import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/screen_size.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String imageUrl;
  final String title;
  const Category({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //? On Tap Functionality Here (Navigate to Category Page)
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: ScreenSize.screenWidth * 0.25,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
              border: Border.all(
                color: kPrimaryColor,
                width: 5,
              ),
            ),
            child: Image.asset(
              widget.imageUrl,
              height: 50,
              width: 50,
            ),
          ),
          const SizedBox(height: 5),
          Text(widget.title,
              style: Styles.textStyle30.copyWith(
                color: Colors.black54,
                fontSize: 13,
              )),
        ],
      ),
    );
  }
}
