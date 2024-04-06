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
            "The Audi RS 6 Avant is a high-performance wagon that is based on the A6 Avant. It is powered by a 4.0-liter V-8 engine that produces 591 horsepower and 590 lb-ft of torque. The RS 6 Avant is equipped with an eight-speed automatic transmission and all-wheel drive. It has a top speed of 190 mph and can accelerate from 0 to 60 mph in 3.5 seconds.",
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
      ],
    );
  }
}
