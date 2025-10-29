import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/login/binding/login_bindings.dart';
import 'package:location_based_social_platform/presentation/auth/login/screen/login_screen.dart';
import 'package:location_based_social_platform/presentation/auth/signup/binding/signup_binding.dart';
import 'package:location_based_social_platform/presentation/auth/signup/screen/create_password.dart';
import 'package:location_based_social_platform/presentation/auth/signup/screen/signup_screen.dart';
import 'package:location_based_social_platform/presentation/auth/signup/screen/verify_age.dart';
import 'package:location_based_social_platform/presentation/intro/splash/binding/splash_binding.dart';
import 'package:location_based_social_platform/presentation/intro/splash/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String createPassword = '/create_password';
  static const String verifyAge = '/verify_age';
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
    GetPage(
      name: login,
      page: () => LoginScreen(),
      bindings: [LoginBindings()],
    ),
    GetPage(
      name: signup,
      page: () => SignupScreen(),
      bindings: [SignupBinding()],
    ),
    GetPage(
      name: createPassword,
      page: () => CreatePasswordScreen(),
      bindings: [SignupBinding()],
    ),
    GetPage(
      name: verifyAge,
      page: () => VerifyAge(),
      bindings: [SignupBinding()],
    ),
  ];
}
