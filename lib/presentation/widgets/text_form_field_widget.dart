import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:location_based_social_platform/core/utils/utils.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.currentFocusNode,
    this.nextFocusNode,
    required this.labelText,
    this.obscureText = false,
    this.validator,
    this.isLastField = false,
    this.suffixIcon,
    this.keyboardType,
  });

  final TextEditingController controller;
  final FocusNode currentFocusNode;
  final FocusNode? nextFocusNode;
  final String labelText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final bool isLastField;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    bool isFocused = currentFocusNode.hasFocus;
    return TextFormField(
      controller: controller,
      focusNode: currentFocusNode,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: appTheme.inputFieldFillColor,
        hintText: labelText,
        hintStyle: textTheme.textStylePoppinsRegular.copyWith(
          color: appTheme.placeTextColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: isFocused
                ? appTheme.primaryColor
                : appTheme.inputFieldBorderrUnfocusColor,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        suffixIcon: suffixIcon != null
            ? IconTheme(
                data: IconThemeData(color: appTheme.secondaryTextColor),
                child: suffixIcon!,
              )
            : null,
      ),
      validator: validator,
      onFieldSubmitted: isLastField
          ? null
          : (value) {
              if (nextFocusNode != null) {
                Utils.fieldFocusChange(
                  context,
                  currentFocusNode,
                  nextFocusNode!,
                );
              } else {
                currentFocusNode.unfocus();
                FocusScope.of(context).nextFocus();
              }
            },
    );
  }
}
