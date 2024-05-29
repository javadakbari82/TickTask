import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticktask/colors.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/bottom_navigation_widget.dart';
import 'package:ticktask/feature/home_screen/presentation/widgets/date_picker_widget.dart';

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
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ElevatedButton(
          //   onPressed: () {
          //     var mytask = TaskSchema()
          //       ..id = Isar.autoIncrement
          //       ..dateTime = controller.selectedTime.value
          //       ..isCancel = false
          //       ..isDone = false
          //       ..isNote = false
          //       ..reminder = true
          //       ..checkList = [
          //         CheckListSchema()
          //           ..name = "first check list"
          //           ..isDone = false
          //           ..isCancel = false
          //       ]
          //       ..describe = "first task describe"
          //       ..name = "first task";
          //     controller.insertTask(mytask);
          //   },
          //   child: const Text('insert task'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     print(controller.selectedTime.value);
          //     controller.getTasks(controller.selectedTime.value);
          //   },
          //   child: const Text('get tasks'),
          // ),
          Text("data"),
        ],
      )),
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
          }),
          const BottomNavigationWidget(),
        ],
      ),
    );
  }
}
