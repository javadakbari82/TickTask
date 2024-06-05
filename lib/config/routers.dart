import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ticktask/feature/create_task_screen/presentation/create_task_binding.dart';
import 'package:ticktask/feature/create_task_screen/presentation/create_task_screen.dart';

import '../feature/home_screen/presentation/home_binding.dart';
import '../feature/home_screen/presentation/home_screen.dart';

var pages = [
  GetPage(
      name: "/home", page: () => const HomeScreen(), binding: HomeBinding()),
  GetPage(
      name: "/create_task",
      page: () => const CreateTaskScreen(),
      binding: CreateTaskBinding())
];
