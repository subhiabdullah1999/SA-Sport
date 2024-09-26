import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/view/widget/home/custom_container_live.dart';
import 'package:sa_sport/view/widget/home/custom_logo_club.dart';
import 'package:sa_sport/view/widget/home/custom_menu_icon.dart';
import 'package:sa_sport/view/widget/home/custom_titel_home.dart';
import 'package:sa_sport/view/widget/table/custom_icon_table.dart';
import 'package:sa_sport/view/widget/table/custom_text_table_divider.dart';
import 'package:sa_sport/view/widget/table/text_today_table.dart';

class TableMachesScreen extends StatefulWidget {
  const TableMachesScreen({super.key});

  @override
  State<TableMachesScreen> createState() => _TableMachesScreenState();
}

class _TableMachesScreenState extends State<TableMachesScreen> {
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
                    const CustomTitelHome(titel: "Matches"),
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/search.png",
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: CustomContainerLive(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: const [
                    CustomIconTable(
                      icondat: Icons.arrow_back_ios,
                    ),
                    CustomTextDivedir(
                      textstr: "---------  ",
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 25,
                      color: AppColors.whiteColor,
                    ),
                    CustomTextTableToday(textto: " Today "),
                    CustomTextDivedir(
                      textstr: "  ---------",
                    ),
                    CustomIconTable(
                      icondat: Icons.arrow_forward_ios,
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
                            crossAxisCount: 1, childAspectRatio: 4),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          "Barcelona VS Real Madried",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("Monday, 12, Feb 2023, 8:30 PM",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: AppColors.gry3)),
                        ),
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            CustomLogoClub(
                              logoClub: "assets/images/barcelona.png",
                              sizeIcon: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CustomLogoClub(
                              logoClub: "assets/images/real.png",
                              sizeIcon: 18,
                            ),
                          ],
                        ),
                        trailing: const Icon(
                          Icons.notifications_active,
                          color: AppColors.redcolor,
                          size: 30,
                        ),
                        isThreeLine: true,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
