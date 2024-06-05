import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/project_schema.dart';

class CreateTaskController extends GetxController {
  CreateTaskRepository localRepository;
  CreateTaskController(this.localRepository);
  var argumentDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  late TextEditingController editingTaskNameController;
  late TextEditingController editingTaskDescriptionController;
  late TextEditingController editingProjectNameController;
  var selectedProject = ProjectSchema();
  @override
  void onInit() {
    super.onInit();
    editingTaskNameController = TextEditingController();
    editingTaskDescriptionController = TextEditingController();
    editingProjectNameController = TextEditingController();
    argumentDate = Get.arguments;
  }

  void insertTask() {
    // localRepository.insertTask(task);
  }
}
