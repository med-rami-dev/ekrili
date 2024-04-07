import 'package:ekrili/core/utils/screen_size.dart';
import 'package:ekrili/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class ListingImage extends StatelessWidget {
  const ListingImage({super.key});
  @override
  Widget build(BuildContext context) {
    String imageUrl1 =
        'https://static.cargurus.com/images/forsale/2024/03/28/16/29/2023_audi_rs_6_avant-pic-7303235181368425586-1024x768.jpeg';
    String imageUrl2 =
        'https://static.cargurus.com/images/forsale/2024/03/28/16/29/2023_audi_rs_6_avant-pic-8813158374985247103-1024x768.jpeg';
    String imageUrl3 =
        "https://static.cargurus.com/images/forsale/2024/03/28/16/29/2023_audi_rs_6_avant-pic-8187306617645056845-1024x768.jpeg";
    String imageUrl4 =
        "https://static.cargurus.com/images/forsale/2024/03/28/16/29/2023_audi_rs_6_avant-pic-9185322910748453575-1024x768.jpeg";
    String imageUrl5 =
        "https://static.cargurus.com/images/forsale/2024/03/28/16/29/2023_audi_rs_6_avant-pic-5951578356359736422-1024x768.jpeg?io=true&format=pjpg&auto=webp&width=640";
    return Stack(children: [
      FlutterCarousel(
          items: [
            Image.network(imageUrl1),
            Image.network(imageUrl2),
            Image.network(imageUrl3),
            Image.network(imageUrl4),
            Image.network(imageUrl5),
          ],
          options: CarouselOptions(
            showIndicator: false,
            autoPlay: true,
            height: ScreenSize.screenHeight * 0.335,
            viewportFraction: 1.1,
            aspectRatio: 16 / 9,
          )),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ArrowBackButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ArrowBackButton(
              icon: const Icon(Icons.ios_share_rounded),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ]);
  }
}
