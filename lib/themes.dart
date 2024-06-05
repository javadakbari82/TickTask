import 'package:flutter/material.dart';
import 'package:ticktask/colors.dart';

class Themes {
  static final lightTheme = ThemeData();

  static final darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
        background: SolidColors.mainBodyColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: SolidColors.bgBottomNavigationBarColor,
          selectedItemColor:
              SolidColors.selectedActivationBottomNavigationBarColor,
          unselectedItemColor:
              SolidColors.unselectedActivationBottomNavigationBarColor),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: SolidColors.actionsAppBarrColor),
          backgroundColor: SolidColors.mainBodyColor,
          actionsIconTheme:
              IconThemeData(color: SolidColors.actionsAppBarrColor),
          titleTextStyle:
              TextStyle(color: SolidColors.actionsAppBarrColor, fontSize: 22)));
}
