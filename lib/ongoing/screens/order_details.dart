import 'package:flutter/material.dart';
import 'package:shyp/models/orders.dart';
import 'package:shyp/ongoing/widgets/load_price.dart';
import 'package:shyp/ongoing/widgets/load_progress.dart';
import 'package:shyp/ongoing/widgets/order_details_widget.dart';
import 'package:shyp/values/colors.dart';

class OrderDetails extends StatefulWidget {
  final Order order;
  const OrderDetails(this.order, {super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background(),
        title: Text('Order: #${widget.order.orderNumber}'),
      ),
      backgroundColor: AppColors.background(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderDeatilWidget(widget.order),
            const SizedBox(
              height: 30,
            ),
            const LoadProgress(),
            const SizedBox(
              height: 30,
            ),
            const LoadPrice(),
          ],
        ),
      ),
    );
  }
}
