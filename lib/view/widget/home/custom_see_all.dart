import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomSeeAll extends StatelessWidget {
  final void Function()? ontap;
  const CustomSeeAll({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Text(
            "see all".tr,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.whiteColor, fontSize: 20),
          ),
          Text(
            " >",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.whiteColor, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
