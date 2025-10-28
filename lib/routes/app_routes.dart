import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/binding/auth_bindings.dart';
import 'package:location_based_social_platform/presentation/auth/screens/login_screen.dart';
import 'package:location_based_social_platform/presentation/intro/splash/binding/splash_binding.dart';
import 'package:location_based_social_platform/presentation/intro/splash/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(name: login, page: () => LoginScreen(), bindings: [AuthBindings()]),
  ];
}
