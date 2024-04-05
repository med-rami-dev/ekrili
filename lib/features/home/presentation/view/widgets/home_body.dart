import 'package:ekrili/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:ekrili/features/home/presentation/view/widgets/single_category.dart';
import 'package:ekrili/features/home/presentation/view/widgets/single_product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeViewBodyW extends StatelessWidget {
  HomeViewBodyW({super.key});

  //? This is a list of categories that will be displayed in the home view
  List<Category> category = [
    const Category(
      imageUrl: 'assets/images/home-cat.png',
    ),
    const Category(
      imageUrl: 'assets/images/cars-cat.png',
    ),
    const Category(
      imageUrl: 'assets/images/cars-cat.png',
    ),
    const Category(
      imageUrl: 'assets/images/cars-cat.png',
    ),
    const Category(
      imageUrl: 'assets/images/cars-cat.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Categories',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Regular"),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 60,
          child: Flexible(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return category[index];
              },
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Last Products',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Regular"),
          ),
        ),
        Expanded(
          flex: 1,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //? number of items in a row
              childAspectRatio: 1 / 1.1, //? ratio of item width to height
              crossAxisSpacing: 15, //? spacing between items horizontally
              mainAxisSpacing: 1 / 1, //? spacing between items vertically
            ),
            itemCount: 5, // replace with your number of items
            itemBuilder: (ctx, i) => const GridTile(child: SingleProduct()),
          ),
        ),
      ],
    );
  }
}
