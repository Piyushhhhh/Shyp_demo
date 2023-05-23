import 'package:flutter/material.dart';
import 'package:shyp/ongoing_order/widgets/booking_dialoge.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/strings.dart';
import 'package:shyp/values/text_styles.dart';

class OrderDetailsActionButtons extends StatefulWidget {
  const OrderDetailsActionButtons({super.key});

  @override
  State<OrderDetailsActionButtons> createState() =>
      _OrderDetailsActionButtonsState();
}

class _OrderDetailsActionButtonsState extends State<OrderDetailsActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              orderConfirmationBottomSheet1(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.primary(),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.confirmLoadBooking,
                    style: TextStyles.semibold20
                        .copyWith(color: AppColors.background()),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.negative(),
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cancel',
                  style: TextStyles.semibold20
                      .copyWith(color: AppColors.negative()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
