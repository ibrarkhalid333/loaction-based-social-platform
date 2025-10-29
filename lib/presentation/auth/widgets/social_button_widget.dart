import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    this.iconPath = '',
    required this.onPress,
    this.width = 62,
    this.height = 62,
    this.loading = false,
    this.fontSize = 14,
    this.icon = const Icon(Icons.account_circle),
  });

  final bool loading;
  final double height, width;
  final VoidCallback onPress;
  final Icon icon;
  final double fontSize;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: appTheme.socialButtonColor,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Center(child: SvgPicture.asset(iconPath)),
      ),
    );
  }
}
