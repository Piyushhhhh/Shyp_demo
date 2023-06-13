import 'package:flutter/material.dart';
import 'package:shyp/data/order_data.dart';
import 'package:shyp/models/orders.dart';
import 'package:shyp/ongoing_order/widgets/load_tile.dart';
import 'package:shyp/shared/widget/tab_picker.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/strings.dart';

class OngoingLoads extends StatefulWidget {
  const OngoingLoads({super.key});

  @override
  State<OngoingLoads> createState() => _OngoingLoadsState();
}

class _OngoingLoadsState extends State<OngoingLoads> {
  ScrollController controller = ScrollController();
  int tabPickerIndex = 0;
  List<Order> order = orders;
  @override
  void initState() {
    controller.addListener(() {
      test();
    });
    super.initState();
  }

  test() {
    if ((controller.position.pixels >
        controller.position.maxScrollExtent - 90)) {
      setState(
        () {
          order += orders;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      appBar: AppBar(
        backgroundColor: AppColors.containerBackground(),
        title: const Text(Strings.myLoad),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: double.maxFinite,
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: AppColors.containerBackground(),
              borderRadius: const BorderRadius.only(
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
                      TabPickerItem(Strings.onGoing),
                      TabPickerItem(Strings.past),
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
              controller: controller,
              itemCount: order.length,
              itemBuilder: (context, i) {
                return LoadTile(order[i]);
              },
            ),
          )
        ],
      ),
    );
  }
}
