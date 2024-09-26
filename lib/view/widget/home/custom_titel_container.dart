import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomTitelContainer extends StatelessWidget {
  final String titel;
  const CustomTitelContainer({super.key, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: AppColors.whiteColor, fontSize: 22),
    );
  }
}
