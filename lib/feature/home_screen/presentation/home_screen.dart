import 'package:flutter/material.dart';
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
        onPressed: () {
          // var task = TaskSchema()
          //   ..name = "task2"
          //   ..describe = "desc 2"
          //   ..dateTime = controller.selectedTime
          //   ..isDone = false
          //   ..isCancel = false
          //   ..id = Isar.autoIncrement
          //   ..reminder = true
          //   ..isNote = false
          //   ..priority = 1;
          // controller.insertTask(task);
        },
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
