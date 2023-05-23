import 'package:flutter/material.dart';
import 'package:shyp/data/order_data.dart';
import 'package:shyp/ongoing_order/widgets/load_tile.dart';
import 'package:shyp/shared/widget/tab_picker.dart';
import 'package:shyp/values/colors.dart';

class OngoingLoads extends StatefulWidget {
  const OngoingLoads({super.key});

  @override
  State<OngoingLoads> createState() => _OngoingLoadsState();
}

class _OngoingLoadsState extends State<OngoingLoads> {
  int tabPickerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      appBar: AppBar(
        backgroundColor: AppColors.containerBackground(),
        title: Text('My Loads'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: AppColors.containerBackground(),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: TabPicker(
                    activeTabIndex: tabPickerIndex,
                    onChange: (index) {},
                    tabs: [
                      TabPickerItem('OnGoing'),
                      TabPickerItem('Past'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
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
