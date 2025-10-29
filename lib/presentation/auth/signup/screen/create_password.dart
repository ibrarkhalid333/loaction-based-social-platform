import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:location_based_social_platform/assets/assets.dart';
import 'package:location_based_social_platform/presentation/auth/signup/controller/signup_controller.dart';
import 'package:location_based_social_platform/presentation/auth/widgets/social_button_widget.dart';
import 'package:location_based_social_platform/presentation/widgets/common_button_widget.dart';
import 'package:location_based_social_platform/presentation/widgets/text_form_field_widget.dart';
import 'package:location_based_social_platform/routes/app_routes.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class CreatePasswordScreen extends GetWidget<SignupController> {
  CreatePasswordScreen({super.key});
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

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
                  'Create Password',
                  style: textTheme.textStylePoppinsSemiBold.copyWith(
                    color: appTheme.textColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Create a strong password to secure your account',
                  textAlign: TextAlign.center,
                  style: textTheme.textStylePoppinsRegular.copyWith(
                    color: appTheme.secondaryTextColor,
                    fontSize: 14.sp,
                    letterSpacing: 0,
                  ),
                ),
                SizedBox(height: 46.h),
                Align(alignment: Alignment.centerLeft, child: Text('Password')),
                SizedBox(height: 8.sp),
                TextFormFieldWidget(
                  controller: passwordController,
                  currentFocusNode: passwordFocusNode,
                  nextFocusNode: confirmPasswordFocusNode,
                  obscureText: true,
                  suffixIcon: SvgPicture.asset(
                    IconAssets.eye_icon,
                    width: 25.w,
                    height: 25.h,
                  ),
                  labelText: 'Enter your Password',
                ),
                SizedBox(height: 24.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Confirm Password'),
                ),
                SizedBox(height: 8.sp),
                TextFormFieldWidget(
                  controller: confirmPasswordController,
                  currentFocusNode: confirmPasswordFocusNode,
                  isLastField: true,
                  obscureText: true,
                  suffixIcon: SvgPicture.asset(
                    IconAssets.eye_icon,
                    width: 25.w,
                    height: 25.h,
                  ),
                  labelText: 'Re-enter your Password',
                ),
                SizedBox(height: 24.h),

                SizedBox(height: 32.h),
                CommonButtonWidget(
                  title: 'Next',
                  width: double.infinity,
                  onPress: () {
                    controller.navigateToNext(AppRoutes.verifyAge);
                  },
                ),
                SizedBox(height: 24.h),
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
                      "Already have an account?",
                      style: textTheme.textStylePoppinsRegular.copyWith(
                        color: appTheme.secondaryTextColor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
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
