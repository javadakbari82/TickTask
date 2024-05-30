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
                    // connectionDirection: ConnectionDirection.before,

                    contentsBuilder: (context, index) {
                      var task = controller.tasks[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              task.name!,
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              task.dateTime.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              task.describe!,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ), // Display task name
                      );
                    },
                    connectorBuilder: (context, index, type) {
                      return const SolidLineConnector();
                    },
                    indicatorBuilder: (context, index) {
                      return GestureDetector(onTap: () {
                        controller.toggleDone(index);
                        controller
                            .getTasks(controller.selectedTime)
                            .then((value) {
                          controller.tasks.value = value!;
                        });
                      }, onLongPress: () {
                        controller.toggleCancel(index);
                        controller
                            .getTasks(controller.selectedTime)
                            .then((value) {
                          controller.tasks.value = value!;
                        });
                      }, child: Obx(() {
                        var task = controller.tasks[index];
                        if (task.isCancel!) {
                          return const DotIndicator(
                            color: Colors.grey,
                            child: Icon(Icons.cancel_outlined),
                          );
                        } else if (task.isDone!) {
                          return const DotIndicator(
                            color: Colors.blue,
                            child: Icon(Icons.check, color: Colors.white),
                          );
                        } else {
                          return const OutlinedDotIndicator(
                            color: Colors.grey,
                          );
                        }
                      }));
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
