import 'package:ekrili/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:ekrili/features/home/presentation/view/widgets/single_category.dart';
import 'package:ekrili/features/home/presentation/view/widgets/single_product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeViewBodyW extends StatelessWidget {
  const HomeViewBodyW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const SizedBox(height: 20),
        const CategoriesListW(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Latest Listings',
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
              childAspectRatio: 0.95 / 1.1, //? ratio of item width to height
              crossAxisSpacing: 15, //? spacing between items horizontally
              mainAxisSpacing: 0.5 / 1, //? spacing between items vertically
            ),
            itemCount: 15, // replace with your number of items
            itemBuilder: (ctx, i) => const GridTile(child: SingleProduct()),
          ),
        ),
      ],
    );
  }
}

class CategoriesListW extends StatelessWidget {
  const CategoriesListW({super.key});

  @override
  Widget build(BuildContext context) {
    //? This is a list of categories that will be displayed in the home view(change it With ur actual categories)
    List<Category> category = [
      const Category(
        title: 'Apartments',
        imageUrl: 'assets/images/home-cat.png',
      ),
      const Category(
        title: 'Cars',
        imageUrl: 'assets/images/cars-cat.png',
      ),
      const Category(
        title: 'Electronics',
        imageUrl: 'assets/images/cars-cat.png',
      ),
      const Category(
        title: 'Fashion',
        imageUrl: 'assets/images/cars-cat.png',
      ),
      const Category(
        title: 'Books',
        imageUrl: 'assets/images/cars-cat.png',
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          height: 90,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return category[index];
            },
            itemCount: category.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
