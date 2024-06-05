import 'package:get/get.dart';
import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';

class CreateTaskController extends GetxController {
  CreateTaskRepository localRepository;
  CreateTaskController(this.localRepository);
  var argumentDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  void onInit() {
    super.onInit();

    argumentDate = Get.arguments;
  }

  void insertTask() {
    // localRepository.insertTask(task);
  }
}
