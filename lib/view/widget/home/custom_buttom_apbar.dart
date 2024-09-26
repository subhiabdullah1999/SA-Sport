import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa_sport/controller/home/home_button_controller.dart';
import 'package:sa_sport/controller/home/rive_utiles_class.dart';
import 'package:sa_sport/core/class/rive_utiles.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/data/model/rive/rive_utiles.dart';

import 'package:rive/rive.dart' as rive;

class CustomButtomApbar extends StatefulWidget {
  const CustomButtomApbar({super.key});

  @override
  State<CustomButtomApbar> createState() => _CustomButtomApbarState();
}

class _CustomButtomApbarState extends State<CustomButtomApbar> {
  RiveAssets selectbottomNav = bottomNavs.first;

  @override
  Widget build(BuildContext context) {
    HomeButtomControllerImp controller = Get.put(HomeButtomControllerImp());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10, top: 0),
      decoration: BoxDecoration(
          color: AppColors.blackColor3,
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              bottomNavs.length,
              (index) => GestureDetector(
                    onTap: () {
                      bottomNavs[index].input!.change(true);
                      if (bottomNavs[index] != selectbottomNav) {
                        setState(() {
                          selectbottomNav = bottomNavs[index];
                        });
                        controller.changePages(index);
                      }
                      Future.delayed(const Duration(milliseconds: 1500), () {
                        bottomNavs[index].input!.change(false);
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(bottom: 3),
                          width: bottomNavs[index] == selectbottomNav ? 20 : 0,
                          height: bottomNavs[index] == selectbottomNav ? 3 : 0,
                          color: AppColors.blue1,
                        ),
                        SizedBox(
                          height: 36,
                          width: 36,
                          child: Opacity(
                            opacity:
                                bottomNavs[index] == selectbottomNav ? 1 : 0.5,
                            child: rive.RiveAnimation.asset(
                              bottomNavs.first.src,
                              artboard: bottomNavs[index].artboard,
                              onInit: (artboard) {
                                rive.StateMachineController controller =
                                    RiveUtiles.getRiveController(artboard,
                                        stateMachineName:
                                            bottomNavs[index].stateMachine);
                                bottomNavs[index].input = controller
                                    .findSMI("active") as rive.SMIBool;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}
