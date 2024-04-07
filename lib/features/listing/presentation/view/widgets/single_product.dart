import 'package:ekrili/core/utils/app_router.dart';
import 'package:ekrili/core/utils/screen_size.dart';
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
            Container(
              height: ScreenSize.screenHeight * 0.18,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.ed.edmunds-media.com/audi/rs-6/2024/oem/2024_audi_rs-6_wagon_performance_fq_oem_1_815.jpg'),
                    fit: BoxFit.fill),
              ),
              child: null,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                'Audi RS6 Avant 2023',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter-Regular",
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
                  fontFamily: "Inter-Regular"),
            ),
          ],
        ),
      ),
    );
  }
}
