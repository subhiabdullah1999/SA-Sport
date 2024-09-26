import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomNameClube extends StatelessWidget {
  final String nameClube;
  const CustomNameClube({super.key, required this.nameClube});

  @override
  Widget build(BuildContext context) {
    return Text(
      nameClube,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.whiteColor4),
    );
  }
}
