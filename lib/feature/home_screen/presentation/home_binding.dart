import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/project_schema.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/tags_schema.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

import '../data/local/database_service.dart';
import '../data/local/database_service_isar.dart';
import '../data/repository/home_repository.dart';
import '../data/repository/home_repository_local.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [TaskSchemaSchema, ProjectSchemaSchema, TagsSchemaSchema],
      directory: dir.path,
    );
    Get.put<Isar>(isar);
    Get.put<DatabaseService>(DataBaseServiceIsar(Get.find()));
    Get.put<HomeRepository>(HomeRepositoryLocal(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}
