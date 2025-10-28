import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:location_based_social_platform/assets/assets.dart';
import 'package:location_based_social_platform/presentation/intro/splash/controller/splash_controller.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.splash),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Logo',
            style: textTheme.textStylePoppinsRegular.copyWith(
              fontSize: 45.sp,
              color: appTheme.secondaryContrastColor,
            ),
          ),
        ),
      ),
    );
  }
}
