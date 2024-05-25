import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/local/schema/task_schema.dart';
import '../data/repository/home_repository.dart';

class HomeController extends GetxController {
  HomeRepository localRepository;
  HomeController(this.localRepository);

  Future<List<TaskSchema>?> getTasks(DateTime dateTime) {
    Future<List<TaskSchema>?> tasks = localRepository.getTasks(dateTime);
    return tasks;
  }

  void insertTask(TaskSchema task) {
    localRepository.insertTask(task);
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
