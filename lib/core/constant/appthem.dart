import 'package:flutter/material.dart';
import 'package:sa_sport/core/constant/appColors.dart';

ThemeData themArabic = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontSize: 25,
          fontFamily: "carterOne",
          color: AppColors.blackColor,
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
        color: AppColors.gry,
        fontSize: 20,
        height: 1.3,
        fontFamily: "carterOne",
      ),
    ));

ThemeData themEnglish = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontSize: 25,
          fontFamily: "carterOne",
          color: AppColors.blackColor,
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
        color: AppColors.gry,
        fontSize: 20,
        height: 1.3,
        fontFamily: "carterOne",
      ),
    ));
