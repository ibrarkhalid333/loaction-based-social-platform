import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/controller/login_controller.dart';
import 'package:location_based_social_platform/presentation/widgets/text_form_field_widget.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: appTheme.screenBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: textTheme.textStylePoppinsSemiBold.copyWith(
                      color: appTheme.textColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Enter your details to login',
                    style: textTheme.textStylePoppinsRegular.copyWith(
                      color: appTheme.secondaryTextColor,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Align(alignment: Alignment.centerLeft, child: Text('Email')),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
