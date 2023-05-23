import 'package:flutter/material.dart';
import 'package:shyp/shared/widget/stepper.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/text_styles.dart';

class LoadProgress extends StatefulWidget {
  const LoadProgress({super.key});

  @override
  State<LoadProgress> createState() => _LoadProgressState();
}

class _LoadProgressState extends State<LoadProgress> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Load Status',
          style: TextStyles.bold16.textColor(),
        ),
        const SizedBox(
          height: 10,
        ),
        StepProgressView(
            width: MediaQuery.of(context).size.width - 20,
            curStep: 2,
            color: AppColors.primary(),
            titles: const ['Pending', 'Quoted', 'Scheduled', 'In Progress']),
      ],
    );
  }
}
