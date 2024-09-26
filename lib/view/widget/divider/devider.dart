import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.oraColor,
      thickness: 1.2,
    );
  }
}
