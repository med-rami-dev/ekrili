import 'package:ekrili/features/process/presentation/view/widgets/requested_rent.dart';
import 'package:flutter/material.dart';

class RequestedRent extends StatelessWidget {
  const RequestedRent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const SingleRequestedRent();
        });
  }
}
