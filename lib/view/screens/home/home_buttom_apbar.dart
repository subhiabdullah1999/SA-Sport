// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sa_sport/controller/home/home_button_controller.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/core/functions/alertdialogexitapp.dart';
import 'package:sa_sport/view/widget/home/custom_buttom_apbar.dart';

class HomeButtomApbar extends StatefulWidget {
  const HomeButtomApbar({super.key});

  @override
  State<HomeButtomApbar> createState() => _HomeButtomApbarState();
}

class _HomeButtomApbarState extends State<HomeButtomApbar> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeButtomControllerImp());
    return SafeArea(
        child: GetBuilder<HomeButtomControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.blackColor10,
        bottomNavigationBar:
            BottomAppBar(color: Colors.transparent, child: CustomButtomApbar()),
        body: WillPopScope(
            onWillPop: alertDialogExitApp,
            child: controller.listPages.elementAt(controller.curentpage)),
      ),
    ));
  }
}
