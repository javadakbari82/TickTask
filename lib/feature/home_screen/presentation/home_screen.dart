import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticktask/colors.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/bottom_navigation_widget.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/date_picker_widget.dart';
import 'package:timelines/timelines.dart';

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
                return FixedTimeline.tileBuilder(
                  builder: TimelineTileBuilder.connected(
                    itemCount: controller
                        .tasks.length, // Assuming you have a list of tasks
                    contentsBuilder: (context, index) {
                      var task = controller.tasks[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          task.name!,
                          style: const TextStyle(color: Colors.white),
                        ), // Display task name
                      );
                    },
                    connectorBuilder: (context, index, type) {
                      return const SolidLineConnector();
                    },
                    indicatorBuilder: (context, index) {
                      return const OutlinedDotIndicator(
                        color: Colors.blue,
                        child: Icon(Icons.check,
                            color: Colors.white), // Example indicator
                      );
                    },
                  ),
                );
              }),
            ],
          ),
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
                colors: GradiantColors.selectedDay),
          ),
          child: const Icon(
            Icons.add,
            color: SolidColors.actionsAppBarrColor,
          ),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DatePickerWidget(getDate: (DateTime selectedTime) {
            controller.selectedTime.value = selectedTime;
            controller.getTasks(controller.selectedTime.value).then((value) {
              controller.tasks.value = value!;
            });
          }),
          const BottomNavigationWidget(),
        ],
      ),
    );
  }
}
