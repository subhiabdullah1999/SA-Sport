import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa_sport/controller/home/home_controller.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:rive/rive.dart' as rive;
import 'package:sa_sport/view/widget/divider/devider.dart';
import 'package:sa_sport/view/widget/home/custom_container_leaguase.dart';
import 'package:sa_sport/view/widget/home/custom_container_live.dart';
import 'package:sa_sport/view/widget/home/custom_menu_icon.dart';
import 'package:sa_sport/view/widget/home/custom_titel_container.dart';
import 'package:sa_sport/view/widget/home/custom_titel_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor10,
        key: controller.keyScaffold,
        drawer: Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Drawer(
            backgroundColor: AppColors.blackColor3,
            width: Get.width - 60,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                side: BorderSide(color: AppColors.oraColor, width: 0.5)),
            child: ListView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              "Home",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColors.whiteColor3,
                                      fontSize: 22),
                            ),
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: rive.RiveAnimation.asset(
                                "assets/riveAssets/1298-2487-animated-icon-set-1-color.riv",
                                artboard: "HOME",
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor3,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const CustomDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              "Profile",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColors.whiteColor3,
                                      fontSize: 22),
                            ),
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: rive.RiveAnimation.asset(
                                "assets/riveAssets/1298-2487-animated-icon-set-1-color.riv",
                                artboard: "USER",
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor3,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const CustomDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              "Abut us",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColors.whiteColor3,
                                      fontSize: 22),
                            ),
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: rive.RiveAnimation.asset(
                                "assets/riveAssets/1298-2487-animated-icon-set-1-color.riv",
                                artboard: "REFRESH/RELOAD",
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor3,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const CustomDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              "Chat",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColors.whiteColor3,
                                      fontSize: 22),
                            ),
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: rive.RiveAnimation.asset(
                                "assets/riveAssets/1298-2487-animated-icon-set-1-color.riv",
                                artboard: "CHAT",
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor3,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
                      ontap: () {
                        controller.keyScaffold.currentState!.openDrawer();
                      },
                      imagepath: "assets/images/menu-bar.png",
                    ),
                    const CustomTitelHome(titel: "SA Sport"),
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/search.png",
                    ),
                  ],
                ),
              ),
              CustomContainerLeaguase(
                ontapindex: () {},
              ),
              const CustomContainerLive(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomTitelContainer(titel: "Latest News"),
                      ],
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 1.8),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            decoration: BoxDecoration(
                                color: AppColors.blackColor3,
                                borderRadius: BorderRadius.circular(25),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/mess.webp"),
                                    fit: BoxFit.cover)),
                            height: 175,
                          );
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
