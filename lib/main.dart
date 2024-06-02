import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ticktask/feature/home_screen/presentation/home_binding.dart';
import 'package:ticktask/feature/home_screen/presentation/home_screen.dart';
import 'package:ticktask/themes.dart';

import 'feature/home_screen/data/local/schema/project_schema.dart';
import 'feature/home_screen/data/local/schema/tags_schema.dart';
import 'feature/home_screen/data/local/schema/task_schema.dart';

Future<void> initialService() async {
  final dir = await getApplicationDocumentsDirectory();

  await Get.putAsync<Isar>(() => Isar.open(
        [TaskSchemaSchema, ProjectSchemaSchema, TagsSchemaSchema],
        directory: dir.path,
      ));
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TickTask',
      theme: Themes.darkTheme,
      // darkTheme: ThemeData.dark(),
      //     ThemeData(
      //   textTheme: const TextTheme(titleLarge: TextStyle()),
      //   useMaterial3: true,
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      //       .copyWith(background: SolidColors.mainBodyColor),
      // ),
      getPages: [
        GetPage(
            name: "/home",
            page: () => const HomeScreen(),
            binding: HomeBinding())
      ],
      initialRoute: "/home",
      // initialBinding: HomeBinding(),
      // home: const HomeScreen()
    );
  }
}
