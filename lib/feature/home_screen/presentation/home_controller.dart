import 'package:get/get.dart';

import '../data/local/schema/task_schema.dart';
import '../data/repository/home_repository.dart';

class HomeController extends GetxController {
  HomeRepository localRepository;
  HomeController(this.localRepository);
  var selectedTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .obs;
  RxList<TaskSchema> tasks = RxList([]);

  @override
  void onInit() {
    super.onInit();
    getTasks(selectedTime.value).then((value) {
      tasks.value = value!;
    });
  }

  Future<List<TaskSchema>?> getTasks(DateTime dateTime) {
    Future<List<TaskSchema>?> tasks = localRepository.getTasks(dateTime);
    // tasks.then((value) {
    //   if (value!.isEmpty)
    //     print("empty");
    //   else
    //     print(value?[0].name);
    // });
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
