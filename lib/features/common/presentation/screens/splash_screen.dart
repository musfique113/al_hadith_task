import 'package:al_hadith_task/application/assets_helper/assets_path.dart';
import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/features/home/presentation/screens/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Gap(60),
          Image.asset(AssetsPath.appLogoPng, height: 120),
          const Spacer(),
          const Center(child: CircularProgressIndicator(color: white)),
          const Gap(20)
        ],
      ),
    );
  }
}
