import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:ticktask/colors.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/bottom_navigation_widget.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/date_picker_widget.dart';

import 'Methods/time_line_method.dart';
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
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
        title: const Text(
          "TickTask",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(() {
                return buildFixedTimeline(controller);
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        visible: true,
        closeManually: false,
        renderOverlay: true,
        overlayOpacity: 0.6,
        overlayColor: const Color.fromARGB(255, 26, 27, 31),
        shape: const CircleBorder(),
        gradientBoxShape: BoxShape.values.last,
        gradient: const LinearGradient(
          colors: GradiantColors.selectedDay,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        childPadding: const EdgeInsets.fromLTRB(2, 8, 8, 8),
        children: [
          SpeedDialChild(
            child: const Icon(
              Icons.task_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            label: 'Task',
            labelStyle: const TextStyle(color: Colors.white),
            labelBackgroundColor: const Color.fromARGB(255, 33, 150, 243),
            onTap: () =>
                Get.toNamed('/create_task', arguments: controller.selectedTime),
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.note_alt_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            label: 'Note',
            labelStyle: const TextStyle(color: Colors.white),
            labelBackgroundColor: const Color.fromARGB(255, 33, 150, 243),
            onTap: () => print('First option selected'),
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.loop_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            label: 'Repeating',
            labelStyle: const TextStyle(color: Colors.white),
            labelBackgroundColor: const Color.fromARGB(255, 33, 150, 243),
            onTap: () => print('First option selected'),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DatePickerWidget(getDate: (DateTime selectedTime) {
            controller.selectedTime = selectedTime;
            controller.getTasks(controller.selectedTime).then((value) {
              controller.tasks.value = value!;
            });
          }),
          const BottomNavigationWidget(),
        ],
      ),
    );
  }
}
