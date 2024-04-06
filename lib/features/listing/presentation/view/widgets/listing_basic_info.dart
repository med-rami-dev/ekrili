import 'package:flutter/material.dart';

class ListingBasicInfo extends StatelessWidget {
  const ListingBasicInfo({super.key});
  /*
  * This widget is responsible for displaying the basic information about the listing
  * like the name of the Listing and the location of the Listing and the rating of this Renter and the price of this Listing
  */
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "Audi RS 6 Avant 2023",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Oran, Algeria",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("|",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          )),
                      SizedBox(width: 5),
                      Text(
                        "Price: ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "4500 DZD",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 5),
                      Text("4.8",
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
