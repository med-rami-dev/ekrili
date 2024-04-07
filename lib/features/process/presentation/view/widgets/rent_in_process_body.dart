import 'package:ekrili/core/utils/styles.dart';
import 'package:ekrili/features/process/presentation/view/widgets/list_of_requested_rent.dart';
import 'package:ekrili/features/process/presentation/view/widgets/list_of_rent_in_process.dart';
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
          TabBar(
            labelStyle: Styles.textStyle14,
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            tabs: [
              Tab(
                icon: Icon(Icons.refresh),
                child: Text('In Process'),
              ),
              Tab(
                icon: Icon(Icons.call_received),
                child: Text('Requested'),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                RentInProcess(),
                RequestedRent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
