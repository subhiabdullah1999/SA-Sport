import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/view/widget/home/custom_logo_club.dart';
import 'package:sa_sport/view/widget/home/custom_see_all.dart';
import 'package:sa_sport/view/widget/home/custom_titel_container.dart';

class CustomContainerLive extends StatelessWidget {
  const CustomContainerLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTitelContainer(titel: "Live Matches"),
              CustomSeeAll(ontap: () {}),
            ],
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          height: 200,
                          width: 165,
                          decoration: BoxDecoration(
                              color: AppColors.blue1,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor4,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "Live",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: AppColors.redcolor),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        const CustomLogoClub(
                                          logoClub:
                                              "assets/images/barcelona.png",
                                          sizeIcon: 25,
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                              "5",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                    color: AppColors.whiteColor,
                                                    fontSize: 25,
                                                  ),
                                            ))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const CustomLogoClub(
                                          logoClub: "assets/images/real.png",
                                          sizeIcon: 25,
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                              "2",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                    color: AppColors.whiteColor,
                                                    fontSize: 25,
                                                  ),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
