import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class IconOk extends StatelessWidget {
  final String textIcon;
  final void Function()? ontap;
  const IconOk({super.key, required this.textIcon, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 60, right: 60),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: AppColors.blackColor3,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
              child: Text(
            textIcon,
            style: Theme.of(context).textTheme.titleLarge,
          )),
        ),
      ),
    );
  }
}
