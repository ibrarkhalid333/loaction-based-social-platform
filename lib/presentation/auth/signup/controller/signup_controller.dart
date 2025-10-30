import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  Rx<DateTime> datetime = DateTime(3000, 2, 1).obs;
  final focusNode1 = FocusNode().obs;
  final focusNode2 = FocusNode().obs;
  final focusNode3 = FocusNode().obs;
  final focusNode4 = FocusNode().obs;

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
