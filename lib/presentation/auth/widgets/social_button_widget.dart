import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    this.title = '',
    required this.onPress,
    this.width = 30,
    this.height = 50,
    this.loading = false,
    this.fontSize = 14,
    this.icon = const Icon(Icons.account_circle),
  });

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Icon icon;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: appTheme.socialButtonColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,

                  style: textTheme.textStylePoppinsMedium.copyWith(
                    color: appTheme.secondaryTextColor,
                    fontSize: fontSize.sp,
                    height: 14 / fontSize,
                    letterSpacing: 0,
                  ),
                ),
              ),
      ),
    );
  }
}
