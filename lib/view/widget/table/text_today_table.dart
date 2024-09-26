import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomTextTableToday extends StatelessWidget {
  final String textto;
  const CustomTextTableToday({super.key, required this.textto});

  @override
  Widget build(BuildContext context) {
    return Text(
      textto,
      style: TextStyle(color: AppColors.whiteColor),
    );
  }
}
