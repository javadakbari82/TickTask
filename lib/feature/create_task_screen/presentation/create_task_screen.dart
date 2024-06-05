import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:ticktask/feature/create_task_screen/presentation/create_task_controller.dart';

class CreateTaskScreen extends GetView<CreateTaskController> {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create task",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "create task screen",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "argument : ${controller.argumentDate}",
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
