import 'package:ekrili/features/listing/presentation/view/widgets/listing_details_body.dart';
import 'package:flutter/material.dart';

class ListingDetailsView extends StatelessWidget {
  const ListingDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomSheet: Padding(
        padding: EdgeInsets.all(10.0),
        child: SizedBox(width: double.infinity, child: SendRentRequest()),
      ),
      body: ListingDetailsBodyW(),
    );
  }
}
