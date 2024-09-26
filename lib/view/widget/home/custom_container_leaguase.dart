import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/view/widget/home/custom_see_all.dart';
import 'package:sa_sport/view/widget/home/custom_titel_container.dart';

class CustomContainerLeaguase extends StatelessWidget {
  final void Function()? ontapindex;

  const CustomContainerLeaguase({super.key, this.ontapindex});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
          color: AppColors.blackColor3,
          borderRadius: BorderRadius.circular(20)),
      height: 175,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTitelContainer(
                titel: "Leagues",
              ),
              CustomSeeAll(ontap: () {})
            ],
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: InkWell(
                      onTap: ontapindex,
                      child: const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/splash.jpg")),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
