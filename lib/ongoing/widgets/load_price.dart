import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/text_styles.dart';

class LoadPrice extends StatefulWidget {
  const LoadPrice({super.key});

  @override
  State<LoadPrice> createState() => _LoadPriceState();
}

class _LoadPriceState extends State<LoadPrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.containerBackground(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Per Tonne freight Price',
            style: TextStyles.bold16.withFadeText(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\u20B9 3000.0',
            style: TextStyles.bold22.textColor(),
          )
        ],
      ),
    );
  }
}
