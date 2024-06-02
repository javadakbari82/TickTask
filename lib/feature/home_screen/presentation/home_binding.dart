import 'package:get/get.dart';
import 'package:ticktask/feature/home_screen/data/local/database_service.dart';
import 'package:ticktask/feature/home_screen/data/local/database_service_isar.dart';
import 'package:ticktask/feature/home_screen/data/repository/home_repository.dart';
import 'package:ticktask/feature/home_screen/data/repository/home_repository_local.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<HomePageDatabaseService>(HomePageDataBaseServiceIsar(Get.find()));
    Get.put<HomeRepository>(HomeRepositoryLocal(Get.find()));
    Get.put<HomeController>(HomeController(Get.find()));
  }
}
