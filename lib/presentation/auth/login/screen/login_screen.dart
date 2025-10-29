import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:location_based_social_platform/assets/assets.dart';
import 'package:location_based_social_platform/presentation/auth/login/controller/login_controller.dart';
import 'package:location_based_social_platform/presentation/auth/widgets/social_button_widget.dart';
import 'package:location_based_social_platform/presentation/widgets/common_button_widget.dart';
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 83.h),
                Text(
                  'Login',
                  style: textTheme.textStylePoppinsSemiBold.copyWith(
                    color: appTheme.textColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Enter your details to login',
                  style: textTheme.textStylePoppinsRegular.copyWith(
                    color: appTheme.secondaryTextColor,
                    fontSize: 14.sp,
                    letterSpacing: 0,
                  ),
                ),
                SizedBox(height: 55.h),
                Align(alignment: Alignment.centerLeft, child: Text('Email')),
                SizedBox(height: 8.sp),
                TextFormFieldWidget(
                  controller: emailController,
                  currentFocusNode: emailFocusNode,
                  nextFocusNode: passwordFocusNode,
                  labelText: 'Enter Your Email',
                ),
                SizedBox(height: 24.h),
                Align(alignment: Alignment.centerLeft, child: Text('Password')),
                SizedBox(height: 8.sp),
                TextFormFieldWidget(
                  controller: passwordController,
                  currentFocusNode: passwordFocusNode,
                  isLastField: true,
                  obscureText: true,
                  suffixIcon: SvgPicture.asset(
                    IconAssets.eye_icon,
                    width: 25.w,
                    height: 25.h,
                  ),
                  labelText: 'Enter Your Password',
                ),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: textTheme.textStylePoppinsRegular.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                CommonButtonWidget(
                  title: 'Login',
                  width: double.infinity,
                  onPress: () {},
                ),
                SizedBox(height: 32.h),
                Row(
                  children: [
                    // Expanded(child: Divider(indent: 0, endIndent: 1.0.sp)),
                    Expanded(
                      child: Container(
                        height: 1.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.black],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text('or continue with'),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Container(
                        height: 1.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.white],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  spacing: 24.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButtonWidget(
                      iconPath: IconAssets.gooogle_icon,
                      onPress: () {},
                    ),
                    SizedBox(height: 12.h),
                    SocialButtonWidget(
                      iconPath: IconAssets.apple_icon,
                      onPress: () {},
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: textTheme.textStylePoppinsRegular.copyWith(
                        color: appTheme.secondaryTextColor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        controller.navigateToNext();
                      },
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
    );
  }
}
