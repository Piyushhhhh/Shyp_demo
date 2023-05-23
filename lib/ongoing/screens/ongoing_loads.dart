import 'package:flutter/material.dart';
import 'package:shyp/data/order_data.dart';
import 'package:shyp/ongoing/widgets/load_tile.dart';
import 'package:shyp/values/colors.dart';

class OngoingLoads extends StatefulWidget {
  const OngoingLoads({super.key});

  @override
  State<OngoingLoads> createState() => _OngoingLoadsState();
}

class _OngoingLoadsState extends State<OngoingLoads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      appBar: AppBar(
        backgroundColor: AppColors.background(),
        title: Text('My Loads'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: orders.length,
              itemBuilder: (context, i) {
                return LoadTile(orders[i]);
              },
            ),
          )
        ],
      ),
    );
  }
}
