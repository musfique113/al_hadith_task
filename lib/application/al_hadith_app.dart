import 'package:al_hadith_task/application/controller_binder.dart';
import 'package:al_hadith_task/application/theme_data/theme_data.dart';
import 'package:al_hadith_task/features/home/presentation/screens/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlHadithApp extends StatelessWidget {
  const AlHadithApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      title: 'Al Hadith Task',
      theme: AppThemeData.lightThemeData(context),
      home: const HomeScreen(),
    );
  }
}
