import 'package:deely/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TextFieldUtils {
  static const String fontFamily = 'sf_fonts';

  static Widget customTextField({
    required TextEditingController controller,
    required String hintText,
    required TextInputType keyboardType,
    bool isPassword = false,
    IconData? icon,
    double? iconSize,
    double? height,
    Color? hintTextColor,
    Color fillColor = MyColors.grey,
    double fontSize = 13.0,
    FontWeight fontWeight = FontWeight.w500,
    double borderRadius = 10.0,
    bool readOnly = false,
    bool obscureText = false,
    VoidCallback? onIconPressed,
    InputDecoration? decoration,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Container? rightWidget,
    String? leftLabel,
    final ValueChanged<String>? onChanged,
    OutlineInputBorder? focusedBorder,
    OutlineInputBorder? enabledBorder,
  }) {
    return Container(
      height: height ?? 48.0,
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.grey,width: 1.3),
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        readOnly: readOnly,
        decoration: decoration ??
            InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                color: hintTextColor,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon ??
                  (icon != null
                      ? IconButton(
                    icon: Icon(icon, size: iconSize ?? 18.0),
                    onPressed: onIconPressed,
                  )
                      : null),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide.none,
              ),
              enabledBorder: enabledBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide.none,
                  ),
              focusedBorder: focusedBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide.none,
                  ),
            ),
      ),
    );
  }
}
