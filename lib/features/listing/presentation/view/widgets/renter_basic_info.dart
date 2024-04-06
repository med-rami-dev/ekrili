import 'package:flutter/material.dart';

class RenterImageAndJoinDateAndNameW extends StatelessWidget {
  const RenterImageAndJoinDateAndNameW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://randomuser.me/api/portraits/men/96.jpg',
            )),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohamed Rami',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Member since 2022',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
