import 'package:get/get.dart';

class SignupController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> navigateToNext(routeName) async {
    print('🔄 Attempting to navigate to: $routeName');
    print('📋 Current route: ${Get.currentRoute}');
    print('📋 Previous route: ${Get.previousRoute}');
    Get.toNamed(routeName);
  }
}
