import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';

class CreateTaskController extends GetxController {
  CreateTaskRepository localRepository;
  CreateTaskController(this.localRepository);

  void insertTask() {
    // localRepository.insertTask(task);
  }
}
