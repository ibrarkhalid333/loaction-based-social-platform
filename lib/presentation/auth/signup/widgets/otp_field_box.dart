import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:location_based_social_platform/core/utils/utils.dart';
import 'package:location_based_social_platform/theme/theme_helper.dart';

class OtpFieldBox extends StatelessWidget {
  const OtpFieldBox({
    super.key,
    required this.controller,
    required this.curruntFocusNode,
    this.nextFocusNode,
    this.isLastField = false,
  });
  final TextEditingController controller;
  final FocusNode curruntFocusNode;
  final FocusNode? nextFocusNode;
  final bool isLastField;
  @override
  Widget build(BuildContext context) {
    bool isFocused = curruntFocusNode.hasFocus;
    bool isFilled = controller.text.isNotEmpty;
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      maxLength: 1,
      focusNode: curruntFocusNode,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: isFilled
            // ? appTheme.screenBackgroundColor
            ? Colors.amber
            : appTheme.otpFieldUnfocusColor,
        focusColor: appTheme.screenBackgroundColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: appTheme.primaryColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),

      // onFieldSubmitted: isLastField
      //     ? null
      //     : (value) {
      //         if (nextFocusNode != null) {
      //           Utils.fieldFocusChange(
      //             context,
      //             curruntFocusNode,
      //             nextFocusNode!,
      //           );
      //         } else {
      //           curruntFocusNode.unfocus();
      //           FocusScope.of(context).nextFocus();
      //         }
      //       },
      onChanged: (value) {
        if (value.isNotEmpty) {
          if (nextFocusNode != null && !isLastField) {
            Utils.fieldFocusChange(context, curruntFocusNode, nextFocusNode!);
          } else {
            curruntFocusNode.unfocus();
          }
        }
      },
    );
  }
}
