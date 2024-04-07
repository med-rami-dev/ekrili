import 'package:ekrili/constants.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ListingDescription extends StatelessWidget {
  const ListingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: kPrimaryHeightBetweenW),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Service Description",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: ReadMoreText(
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'Read less',
            trimLines: 3,
            kCarDescription,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            moreStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: kPrimaryHeightBetweenW),
      ],
    );
  }
}
