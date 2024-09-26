import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomTitelHome extends StatelessWidget {
  final String titel;
  const CustomTitelHome({super.key, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: AppColors.whiteColor, fontFamily: "carterOne"),
    );
  }
}
