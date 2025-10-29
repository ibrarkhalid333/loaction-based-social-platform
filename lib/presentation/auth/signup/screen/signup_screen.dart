import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/signup/controller/signup_controller.dart';
import 'package:location_based_social_platform/presentation/auth/widgets/social_button_widget.dart';
import 'package:location_based_social_platform/presentation/widgets/common_button_widget.dart';
import 'package:location_based_social_platform/presentation/widgets/text_form_field_widget.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class LoginScreen extends GetWidget<SignupController> {
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
                  SizedBox(height: 2.sp),
                  TextFormFieldWidget(
                    controller: emailController,
                    currentFocusNode: emailFocusNode,
                    nextFocusNode: passwordFocusNode,
                    labelText: 'Enter Your Email',
                  ),
                  SizedBox(height: 5.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Password'),
                  ),
                  SizedBox(height: 2.sp),
                  TextFormFieldWidget(
                    controller: passwordController,
                    currentFocusNode: passwordFocusNode,
                    isLastField: true,
                    obscureText: true,
                    suffixIcon: ImageIcon(
                      AssetImage('assets/icons/eye_icon.png'),
                    ),
                    labelText: 'Enter Your Password',
                  ),
                  SizedBox(height: 2.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?'),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  CommonButtonWidget(
                    title: 'Login',
                    width: double.infinity,
                    onPress: () {},
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(width: 10.w),
                      Text('or continue with'),
                      SizedBox(width: 10.w),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  SocialButtonWidget(
                    title: 'Continue with Google',
                    width: double.infinity,
                    onPress: () {},
                  ),
                  SizedBox(height: 10.h),
                  SocialButtonWidget(
                    title: 'Continue with Apple',
                    width: double.infinity,
                    onPress: () {},
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 17.sp),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: textTheme.textStylePoppinsRegular.copyWith(
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
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
