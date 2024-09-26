import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

class TextFormFiledProfile extends StatelessWidget {
  final String textLabel;
  const TextFormFiledProfile({super.key, required this.textLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        decoration: InputDecoration(
            label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textLabel,
                style:
                    const TextStyle(color: AppColors.whiteColor3, fontSize: 18),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
