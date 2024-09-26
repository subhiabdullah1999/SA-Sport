import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class CustomIconApparHome extends StatelessWidget {
  final String imagepath;
  final void Function()? ontap;
  const CustomIconApparHome({super.key, required this.imagepath, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
          height: 40,
          width: 40,
          child: ImageIcon(
            AssetImage(imagepath),
            color: AppColors.whiteColor,
          )),
    );
  }
}
