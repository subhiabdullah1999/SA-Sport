import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomIconTable extends StatelessWidget {
  final IconData icondat;
  const CustomIconTable({super.key, required this.icondat});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icondat,
      size: 25,
      color: AppColors.whiteColor,
    );
  }
}
