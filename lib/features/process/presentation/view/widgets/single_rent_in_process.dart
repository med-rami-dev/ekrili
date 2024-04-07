import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SingleRentInProcess extends StatelessWidget {
  const SingleRentInProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, "/rent_in_process");
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.network(
              kCarImage,
              height: 120,
              width: 120,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(kCarName,
                    style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter-Regular',
                        fontSize: 16)),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Reserved By:',
                      style: Styles.textStyle14
                          .copyWith(color: Colors.grey, fontSize: 12),
                    ),
                    const Text(
                      ' Mohamed Rami',
                      style: Styles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Reserved At:',
                      style: Styles.textStyle14
                          .copyWith(color: Colors.grey, fontSize: 12),
                    ),
                    Text(' 12/12/2021',
                        style: Styles.textStyle14.copyWith(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            fontSize: 12)),
                    Text(' | 1 DAY ',
                        style: Styles.textStyle14.copyWith(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
