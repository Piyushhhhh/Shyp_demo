import 'package:flutter/material.dart';
import 'package:shyp/models/orders.dart';
import 'package:shyp/ongoing_order/screens/order_details.dart';
import 'package:shyp/shared/widget/seprater.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/text_styles.dart';

class LoadTile extends StatefulWidget {
  final Order order;
  const LoadTile(this.order, {super.key});

  @override
  State<LoadTile> createState() => _LoadTileState();
}

class _LoadTileState extends State<LoadTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OrderDetails(widget.order)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.containerBackground(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price Pending',
                  style: TextStyles.regular14.textColor(),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: widget.order.pricePending == true
                          ? AppColors.primary().withOpacity(0.6)
                          : AppColors.accent().withOpacity(0.6),
                      border: Border.all(
                        color: widget.order.pricePending == true
                            ? AppColors.primary()
                            : AppColors.accent(),
                      ),
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        widget.order.pricePending == true ? 'Pending' : 'Done',
                        style: TextStyles.regular12
                            .copyWith(color: AppColors.text()),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 25,
                  color: AppColors.primary(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.order.startPoint,
                      style: TextStyles.semibold16.textColor(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.order.startdate,
                      style: TextStyles.semibold14.withFadeText(),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.flag,
                  size: 25,
                  color: AppColors.primary(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.order.dropPoint,
                      style: TextStyles.semibold16.textColor(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.order.dropDate,
                      style: TextStyles.semibold14.withFadeText(),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const MySeparator(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.order.loadDeatils,
                  style: TextStyles.regular14.textColor(),
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: AppColors.primary(),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
