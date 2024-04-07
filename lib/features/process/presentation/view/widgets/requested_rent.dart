import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:ekrili/features/process/presentation/view/widgets/custom_approve_reject_button.dart';
import 'package:flutter/material.dart';

class SingleRequestedRent extends StatelessWidget {
  const SingleRequestedRent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                          kCarImage,
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: const SizedBox(
                    height: 120,
                    width: 120,
                  )),
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
                        'Requested By:',
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomButtonAcceptReject(
                  text: 'Accept',
                  onPressed: () {},
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomButtonAcceptReject(
                  text: 'Reject',
                  onPressed: () {},
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
