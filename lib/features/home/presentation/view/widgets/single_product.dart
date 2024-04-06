import 'package:ekrili/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.listingDetails);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 120,
              width: 130,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Image.network(
                'https://media.ed.edmunds-media.com/audi/rs-6/2024/oem/2024_audi_rs-6_wagon_performance_fq_oem_1_815.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                'Audi RS6',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins-Regular",
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '4500 DZD/24H',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                  fontFamily: "Poppins-Regular"),
            ),
          ],
        ),
      ),
    );
  }
}
