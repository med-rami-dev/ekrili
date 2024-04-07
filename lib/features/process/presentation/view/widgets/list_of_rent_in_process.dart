import 'package:ekrili/features/process/presentation/view/widgets/single_rent.dart';
import 'package:flutter/material.dart';

class RentInProcess extends StatelessWidget {
  const RentInProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const SingleRentInProcess();
        });
  }
}
