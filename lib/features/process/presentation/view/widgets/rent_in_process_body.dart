import 'package:ekrili/constants.dart';
import 'package:ekrili/features/process/presentation/view/widgets/single_rent_in_process.dart';
import 'package:ekrili/features/process/presentation/view/widgets/top_section.dart';
import 'package:flutter/material.dart';

class RentInProcessBodyW extends StatelessWidget {
  const RentInProcessBodyW({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          TopSectionInProcess(),
          SizedBox(
            height: kPrimaryHeightBetweenW,
          ),
          SingleRentInProcess(),
        ],
      ),
    );
  }
}
