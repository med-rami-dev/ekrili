import 'package:ekrili/constants.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/custom_text_field.dart';
import 'package:ekrili/features/listing/presentation/view/widgets/single_product.dart';
import 'package:flutter/material.dart';

class SearchViewBodyW extends StatelessWidget {
  const SearchViewBodyW({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kPrimaryHeightBetweenW,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomTextField(
              labelText: 'Search..',
              controller: TextEditingController(),
              isPassword: false,
              keyboardType: TextInputType.text,
              enableBorder: InputBorder.none,
              focusBorder: InputBorder.none,
              displayIcon: true,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          const SizedBox(
            height: kPrimaryHeightBetweenW,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Search Results',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins-Regular"),
            ),
          ),
          const SizedBox(
            height: kPrimaryHeightBetweenW,
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
      ),
    );
  }
}
