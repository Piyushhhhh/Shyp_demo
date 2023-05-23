import 'package:flutter/material.dart';
import 'package:shyp/models/orders.dart';
import 'package:shyp/values/strings.dart';
import 'package:shyp/values/text_styles.dart';

class OrderDeatilWidget extends StatefulWidget {
  final Order order;
  const OrderDeatilWidget(this.order, {super.key});

  @override
  State<OrderDeatilWidget> createState() => _OrderDeatilWidgetState();
}

class _OrderDeatilWidgetState extends State<OrderDeatilWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.pickUpLocation,
                      style: TextStyles.semibold14.withFadeText(),
                    ),
                    Text(
                      widget.order.startPoint,
                      style: TextStyles.bold16.textColor(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.dropLocation,
                      style: TextStyles.semibold14.withFadeText(),
                    ),
                    Text(
                      widget.order.dropPoint,
                      style: TextStyles.bold16.textColor(),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'assets/truck.png',
              scale: 1.3,
              height: 180,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.orderId,
              style: TextStyles.semibold14.withFadeText(),
            ),
            Text(
              widget.order.orderNumber,
              style: TextStyles.bold16.textColor(),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.pickUpdate,
              style: TextStyles.semibold14.withFadeText(),
            ),
            Text(
              widget.order.startdate,
              style: TextStyles.bold16.textColor(),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.dropDate,
              style: TextStyles.semibold14.withFadeText(),
            ),
            Text(
              widget.order.dropDate,
              style: TextStyles.bold16.textColor(),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.quantityOfLoads,
              style: TextStyles.semibold14.withFadeText(),
            ),
            Text(
              '25.8 Tonne',
              style: TextStyles.bold16.textColor(),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.materialType,
              style: TextStyles.semibold14.withFadeText(),
            ),
            Text(
              Strings.tmt,
              style: TextStyles.bold16.textColor(),
            ),
          ],
        )
      ],
    );
  }
}
