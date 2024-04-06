import 'package:ekrili/features/listing/presentation/view/widgets/listing_basic_info.dart';
import 'package:ekrili/features/listing/presentation/view/widgets/listing_desc.dart';
import 'package:ekrili/features/listing/presentation/view/widgets/listing_image.dart';
import 'package:ekrili/features/listing/presentation/view/widgets/renter_information.dart';
import 'package:flutter/material.dart';

class ListingDetailsBodyW extends StatelessWidget {
  const ListingDetailsBodyW({super.key});
  // Coded by Mohamed Rami
  // contact@mohamedrami.me
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            ListingImage(),
            ListingBasicInfo(),
            RenterInformation(),
            ListingDescription(),
          ],
        ),
      ),
    );
  }
}
