import 'package:flutter/material.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/text_styles.dart';

orderConfirmationBottomSheet1(BuildContext context) {
  var _controller = TextEditingController();
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: AppColors.background(),
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Conignor Details (Dispatch From)',
                  style: TextStyles.regular16.textColor(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: AppColors.accent(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controller,
              style: TextStyles.regular16.textColor(),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: _controller.clear,
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.fadeText(),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  hintText: 'Enter Loaction',
                  hintStyle: TextStyles.regular16.withFadeText()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '+ Add New Consignee Contact',
              style: TextStyles.regular16.withNegative(),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                orderConfirmationBottomSheet2(context);
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
                      'Next',
                      style: TextStyles.semibold20
                          .copyWith(color: AppColors.background()),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    ),
  );
}

orderConfirmationBottomSheet2(BuildContext context) {
  var _controller = TextEditingController();
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: AppColors.background(),
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Conignor Details (Ship To)',
                  style: TextStyles.regular16.textColor(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: AppColors.accent(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controller,
              style: TextStyles.regular16.textColor(),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: _controller.clear,
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.fadeText(),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  hintText: 'Enter Loaction',
                  hintStyle: TextStyles.regular16.withFadeText()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '+ Add New Consignee Contact',
              style: TextStyles.regular16.withNegative(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: AppColors.negative(),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Back',
                          style: TextStyles.semibold20
                              .copyWith(color: AppColors.background()),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: AppColors.primary(),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Confirm',
                          style: TextStyles.semibold20
                              .copyWith(color: AppColors.background()),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    ),
  );
}
