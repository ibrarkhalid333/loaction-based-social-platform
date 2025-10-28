import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/intro/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
