import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/signup/controller/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
