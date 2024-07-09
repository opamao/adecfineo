import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../themes/themes.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? couleur;
  final Color? textcouleur;

  const SubmitButton(
      this.title, {super.key,
        required this.onPressed,
        this.height,
        this.fontSize,
        this.couleur,
        this.width,
        this.textcouleur,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 14.w,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: couleur ?? appOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.w),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize ?? 12.sp,
            color: textcouleur ?? appWhite,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
