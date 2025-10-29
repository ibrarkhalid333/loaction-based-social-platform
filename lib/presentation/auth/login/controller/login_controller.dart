import 'package:get/get.dart';
import 'package:location_based_social_platform/routes/app_routes.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> navigateToNext() async {
    Get.toNamed(AppRoutes.signup);
  }
}
