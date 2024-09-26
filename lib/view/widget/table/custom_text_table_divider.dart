import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomTextDivedir extends StatelessWidget {
  final String textstr;
  const CustomTextDivedir({super.key, required this.textstr});

  @override
  Widget build(BuildContext context) {
    return Text(
      textstr,
      style: TextStyle(color: AppColors.blackColor3),
    );
  }
}
