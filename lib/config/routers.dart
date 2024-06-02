import 'package:get/get_navigation/src/routes/get_route.dart';

import '../feature/home_screen/presentation/home_binding.dart';
import '../feature/home_screen/presentation/home_screen.dart';

var pages = [
  GetPage(
      name: "/home", page: () => const HomeScreen(), binding: HomeBinding()),
  // GetPage(name: "/crate_task", page: )
];
