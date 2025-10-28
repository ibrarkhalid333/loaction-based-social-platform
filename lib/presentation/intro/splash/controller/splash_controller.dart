import 'package:get/get.dart';
import 'package:location_based_social_platform/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNext();
  }

  Future<void> _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offAllNamed(AppRoutes.login);
  }
}
