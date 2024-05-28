import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticktask/colors.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/bottom_navigation_widget.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: SolidColors.actionsAppBarrColor,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.more_horiz,
                color: SolidColors.actionsAppBarrColor,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
          title: const Text(
            "TickTask",
            style: TextStyle(color: SolidColors.actionsAppBarrColor),
          ),
          backgroundColor: SolidColors.bgAppBarColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("data")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff3371FF),
                Color(0xff8426D6),
              ],
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white70,
          ),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationWidget(),
        ],
      ),
    );
  }
}
