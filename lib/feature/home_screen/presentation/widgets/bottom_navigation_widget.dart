import 'package:flutter/material.dart';

import '../../../../colors.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: SolidColors.activationBottomNavigationBarColor,
      unselectedItemColor: Colors.white30,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: SolidColors.activationBottomNavigationBarColor,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.developer_board), label: "Board"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_alert), label: "UnPlanned"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      ],
      backgroundColor: SolidColors.bgBottomNavigationBarColor,
    );
  }
}
