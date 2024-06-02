import 'dart:async';

import 'package:get/get.dart';

import '../data/local/schema/task_schema.dart';
import '../data/repository/home_repository.dart';

class HomeController extends GetxController {
  HomeRepository localRepository;
  HomeController(this.localRepository);
  var selectedTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  RxList<TaskSchema> tasks = RxList([]);

  // Stream<void> taskChanged = _isar.taskSchemas.watchLazy();
  // taskChanged.listen(() {});

  @override
  void onInit() {
    super.onInit();
    taskListener();
    getTasks(selectedTime).then((value) {
      tasks.value = value!;
    });
  }

  void taskListener() {
    Stream<void> myTasks = localRepository.tasks();
    myTasks.listen((event) {
      getTasks(selectedTime).then((value) {
        tasks.value = value!;
      });
    });
  }

  void toggleDone(int index) {
    if (tasks[index].isCancel == false) {
      if (tasks[index].isDone == true) {
        tasks[index].isDone = false;
      } else {
        tasks[index].isDone = true;
      }
      editTask(tasks[index]);
    }
  }

  void toggleCancel(int index) {
    if (tasks[index].isCancel == true) {
      tasks[index].isCancel = false;
    } else {
      tasks[index].isCancel = true;
      tasks[index].isDone = false;
    }
    editTask(tasks[index]);
  }

  Future<List<TaskSchema>?> getTasks(DateTime dateTime) {
    Future<List<TaskSchema>?> tasks = localRepository.getTasks(dateTime);
    return tasks;
  }

  void editTask(TaskSchema task) {
    localRepository.editTask(task);
  }

  void deleteTask(int id) {
    localRepository.deleteTask(id);
  }

  void cancelTask(int id) {
    localRepository.cancelTask(id);
  }

  void doneTask(int id) {
    localRepository.doneTask(id);
  }
}
