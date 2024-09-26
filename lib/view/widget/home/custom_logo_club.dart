import 'package:flutter/material.dart';

class CustomLogoClub extends StatelessWidget {
  final String logoClub;
  final double sizeIcon;

  const CustomLogoClub(
      {super.key, required this.logoClub, required this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: sizeIcon,
      backgroundImage: AssetImage(logoClub),
    );
  }
}
