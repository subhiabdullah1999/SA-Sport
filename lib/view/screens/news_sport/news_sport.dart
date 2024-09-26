import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/view/widget/home/custom_menu_icon.dart';
import 'package:sa_sport/view/widget/home/custom_titel_home.dart';

class NewsSport extends StatelessWidget {
  const NewsSport({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor10,
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/menu-bar.png",
                    ),
                    const CustomTitelHome(titel: "News Sport"),
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/search.png",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, childAspectRatio: 1.2),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            color: AppColors.blackColor3,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                child: Text(
                                  "ميسي يتحصل على الكرة الذهبية الثامنة في تاريخه",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: AppColors.whiteColor,
                                          fontSize: 22),
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50)),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/mess.webp"),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
