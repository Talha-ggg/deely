import 'package:deely/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TextUtils {
  static const String interFamily = 'sf_fonts';

  static Text txt({
    required String text,
    String? fontFamily,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
  }) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow != null || maxLines != null ? TextOverflow.ellipsis : null,
      softWrap: true,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: fontFamily ?? interFamily,
        overflow: overflow != null || maxLines != null ? TextOverflow.ellipsis : null,
        fontSize: fontSize ?? 12,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.w300,
        decorationColor: color ?? MyColors.black,
        decoration: textDecoration ?? TextDecoration.none,
      ),
    );
  }
}