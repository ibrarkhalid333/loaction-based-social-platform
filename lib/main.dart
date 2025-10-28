import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:location_based_social_platform/presentation/intro/splash/splash_screen.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(365, 640),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'Flutter Demo', home: SplashScreen());
  }
}
