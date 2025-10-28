import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/controller/login_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
