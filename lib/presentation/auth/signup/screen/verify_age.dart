import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:location_based_social_platform/presentation/auth/signup/controller/signup_controller.dart';
import 'package:location_based_social_platform/presentation/widgets/common_button_widget.dart';
import 'package:location_based_social_platform/routes/app_routes.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class VerifyAge extends GetWidget<SignupController> {
  VerifyAge({super.key});
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
                  'Let\'s Verify Your Age',
                  style: textTheme.textStylePoppinsSemiBold.copyWith(
                    color: appTheme.textColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'We just need your date of birth to confirm you’re old enough to join our community.',
                  textAlign: TextAlign.center,
                  style: textTheme.textStylePoppinsRegular.copyWith(
                    color: appTheme.secondaryTextColor,
                    fontSize: 14.sp,
                    letterSpacing: 0,
                  ),
                ),
                SizedBox(height: 61.h),
                Container(
                  width: double.infinity,
                  height: 224.h,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 42.h,
                            width: 108.w,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Year',
                                style: textTheme.textStylePoppinsMedium
                                    .copyWith(fontSize: 14.sp),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Container(
                            height: 42.h,
                            width: 108.w,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Month',
                                style: textTheme.textStylePoppinsMedium
                                    .copyWith(fontSize: 14.sp),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Container(
                            height: 42.h,
                            width: 108.w,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Day',
                                style: textTheme.textStylePoppinsMedium
                                    .copyWith(fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,

                          //check this scrollDatePicker
                          child: ScrollDatePicker(
                            selectedDate: controller.datetime.value,
                            onDateTimeChanged: (DateTime newTime) {},
                            viewType: [
                              DatePickerViewType.year,
                              DatePickerViewType.month,
                              DatePickerViewType.day,
                            ],
                            scrollViewOptions: DatePickerScrollViewOptions(
                              year: ScrollViewDetailOptions(
                                textStyle: textTheme.textStylePoppinsRegular
                                    .copyWith(
                                      fontSize: 14.sp,
                                      letterSpacing: 0,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                              ),
                              month: ScrollViewDetailOptions(
                                alignment: Alignment.centerLeft,
                                textStyle: textTheme.textStylePoppinsRegular
                                    .copyWith(
                                      fontSize: 14.sp,
                                      letterSpacing: 0,
                                      overflow: TextOverflow.visible,
                                    ),
                              ),
                              day: ScrollViewDetailOptions(
                                textStyle: textTheme.textStylePoppinsRegular
                                    .copyWith(fontSize: 18.sp),
                              ),
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            ),
                            options: DatePickerOptions(
                              itemExtent: 45.h,
                              diameterRatio: 5,
                              perspective: 0.01,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 242.h),

                CommonButtonWidget(
                  title: 'Next',
                  width: double.infinity,
                  onPress: () {
                    controller.navigateToNext(AppRoutes.verifyOTP);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
