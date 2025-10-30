import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/signup/controller/signup_controller.dart';
import 'package:location_based_social_platform/presentation/auth/signup/widgets/otp_field_box.dart';
import 'package:location_based_social_platform/presentation/widgets/common_button_widget.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class VerifyOtp extends GetWidget<SignupController> {
  VerifyOtp({super.key});
  final text1 = TextEditingController();
  final text2 = TextEditingController();
  final text3 = TextEditingController();
  final text4 = TextEditingController();

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
                  'Verify OTP',
                  style: textTheme.textStylePoppinsSemiBold.copyWith(
                    color: appTheme.textColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Enter the OTP sent to your email.',
                  textAlign: TextAlign.center,
                  style: textTheme.textStylePoppinsRegular.copyWith(
                    color: appTheme.secondaryTextColor,
                    fontSize: 14.sp,
                    letterSpacing: 0,
                  ),
                ),
                SizedBox(height: 54.h),
                // Container(width: double.infinity, height: 224.h),
                Row(
                  children: [
                    SizedBox(width: 52.w),
                    Expanded(
                      child: OtpFieldBox(
                        controller: text1,
                        curruntFocusNode: controller.focusNode1.value,
                        nextFocusNode: controller.focusNode2.value,
                      ),
                    ),
                    SizedBox(width: 13.w),
                    Expanded(
                      child: OtpFieldBox(
                        controller: text2,
                        curruntFocusNode: controller.focusNode2.value,
                        nextFocusNode: controller.focusNode3.value,
                      ),
                    ),
                    SizedBox(width: 13.w),
                    Expanded(
                      child: OtpFieldBox(
                        controller: text3,
                        curruntFocusNode: controller.focusNode3.value,
                        nextFocusNode: controller.focusNode4.value,
                      ),
                    ),
                    SizedBox(width: 13.w),
                    Expanded(
                      child: OtpFieldBox(
                        controller: text4,
                        curruntFocusNode: controller.focusNode4.value,
                        isLastField: true,
                      ),
                    ),
                    SizedBox(width: 52.w),
                  ],
                ),

                SizedBox(height: 32.h),

                CommonButtonWidget(
                  title: 'Verify OTP',
                  width: double.infinity,
                  onPress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
