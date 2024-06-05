import 'package:get/get.dart';
import 'package:ticktask/feature/create_task_screen/data/local/database_service.dart';
import 'package:ticktask/feature/create_task_screen/data/local/database_service_isar.dart';
import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';
import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository_local.dart';
import 'package:ticktask/feature/create_task_screen/presentation/create_task_controller.dart';

class CreateTaskBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<CreateTaskDatabaseService>(
        CreateTaskDataBaseServiceIsar(Get.find()));
    Get.put<CreateTaskRepository>(CreateTaskRepositoryLocal(Get.find()));
    Get.put<CreateTaskController>(CreateTaskController(Get.find()));
  }
}
