import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/login/controller/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
