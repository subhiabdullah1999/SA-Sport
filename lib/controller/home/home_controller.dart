import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey<ScaffoldState>();
  // DrawerController drawerController =
  //     DrawerController(child: Drawer(), alignment: DrawerAlignment.start);
}
