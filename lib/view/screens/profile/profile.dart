import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/view/widget/home/custom_menu_icon.dart';
import 'package:sa_sport/view/widget/home/custom_titel_home.dart';
import 'package:sa_sport/view/widget/profile/icon_ok.dart';
import 'package:sa_sport/view/widget/profile/text_form_filed.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                    const CustomTitelHome(titel: "Profile"),
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/search.png",
                    ),
                  ],
                ),
              ),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Form(
                      child: Column(
                    children: const [
                      TextFormFiledProfile(
                        textLabel: " منتخبك المفضل",
                      ),
                      TextFormFiledProfile(
                        textLabel: " دوريك المفضل",
                      ),
                      TextFormFiledProfile(
                        textLabel: " فريقك المفضل",
                      ),
                      TextFormFiledProfile(
                        textLabel: " لاعبك المفضل",
                      ),
                      TextFormFiledProfile(
                        textLabel: " حارسك المفضل",
                      ),
                      TextFormFiledProfile(
                        textLabel: " مدربك المفضل",
                      ),
                      TextFormFiledProfile(
                        textLabel: " رقمك المفضل",
                      ),
                    ],
                  ))),
              IconOk(
                ontap: () {},
                textIcon: "OK",
              )
            ],
          ),
        ),
      ),
    );
  }
}
