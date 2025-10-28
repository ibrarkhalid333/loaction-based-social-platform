import 'package:flutter/material.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key,
    this.textColor = Colors.white,
    // this.textColor = appTheme.buttonTextColor,
    this.buttonColor = Colors.white,
    this.title = '',
    required this.onPress,
    this.width = 30,
    this.height = 50,
    this.loading = false,
    this.icon = const Icon(Icons.account_circle),
  });

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
