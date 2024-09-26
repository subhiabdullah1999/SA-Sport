import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sa_sport/view/screens/news_sport/news_sport.dart';
import 'package:sa_sport/view/screens/home/home.dart';
import 'package:sa_sport/view/screens/profile/profile.dart';
import 'package:sa_sport/view/screens/standings/standings.dart';
import 'package:sa_sport/view/screens/table/table_matches.dart';

abstract class HomeButtomController extends GetxController {
  changePages(int index);
}

class HomeButtomControllerImp extends HomeButtomController {
  int curentpage = 0;

  List<Widget> listPages = [
    const Home(),
    const TableMachesScreen(),
    const StandingsScreen(),
    const NewsSport(),
    const ProfileScreen(),
  ];

  @override
  changePages(int index) {
    curentpage = index;
    update();
  }
}
