import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticktask/colors.dart';
import 'package:ticktask/feature/home_screen/presentation/home_binding.dart';
import 'package:ticktask/feature/home_screen/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TickTask',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: SolidColors.mainBodyColor),
        ),
        initialBinding: HomeBinding(),
        home: const HomeScreen());
  }
}
