import 'package:flutter/material.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/strings.dart';
import 'package:shyp/values/text_styles.dart';

orderConfirmationBottomSheet1(BuildContext context) {
  var controller = TextEditingController();
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
                  Strings.conginorDisptchFrom,
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
              controller: controller,
              style: TextStyles.regular16.textColor(),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: controller.clear,
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.fadeText(),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  hintText: Strings.enterLocation,
                  hintStyle: TextStyles.regular16.withFadeText()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Strings.addNewConsignee,
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
                      Strings.next,
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
  var controller = TextEditingController();
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
                  Strings.conginorShipTo,
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
              controller: controller,
              style: TextStyles.regular16.textColor(),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: controller.clear,
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.fadeText(),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primary(), width: 1.0),
                  ),
                  hintText: Strings.enterLocation,
                  hintStyle: TextStyles.regular16.withFadeText()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Strings.addNewConsignee,
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
                          Strings.back,
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
                          Strings.confirm,
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
