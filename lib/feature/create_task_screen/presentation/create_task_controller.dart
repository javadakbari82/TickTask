import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/project_schema.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

class CreateTaskController extends GetxController {
  CreateTaskRepository localRepository;
  CreateTaskController(this.localRepository);

  var argumentDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .obs;
  var priorityValue = 4.obs;
  var switchValue = false.obs;
  var checkBoxValue = false.obs;
  late TextEditingController editingTaskNameController;
  late TextEditingController editingTaskDescriptionController;
  late TextEditingController editingProjectNameController;
  late TextEditingController editingCheckListNameController;

  var selectedProject = ProjectSchema().obs;

  final formKey = GlobalKey<FormState>();

  RxList<ProjectSchema> projects = RxList([]);
  RxList<CheckListSchema> checkList = RxList([]);

  @override
  void onInit() {
    super.onInit();
    projectListener();
    getAllProjects();
    editingTaskNameController = TextEditingController();
    editingTaskDescriptionController = TextEditingController();
    editingProjectNameController = TextEditingController();
    editingCheckListNameController = TextEditingController();
    argumentDate.value = Get.arguments;
  }

  void projectListener() {
    Stream<void> myProjects = localRepository.projectListener();
    myProjects.listen((event) {
      getAllProjects();
    });
  }

  void insertTask() {
    // localRepository.insertTask(task);
  }
  ProjectSchema createProject() {
    var newProject = ProjectSchema()
      ..name = editingProjectNameController.text
      ..id = Isar.autoIncrement;
    localRepository
        .createProject(newProject)
        .then((value) => newProject.id = value);
    return newProject;
  }

  void getAllProjects() {
    localRepository.getAllProjects().then((value) => projects.value = value);
  }
}
