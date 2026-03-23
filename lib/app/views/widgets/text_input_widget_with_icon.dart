import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInputWidgetWithIcon extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLines;
  final IconData? prefixIcon;

  const TextInputWidgetWithIcon({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: TextStyle(fontSize: 12.sp, color: AppColors.grey),
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),

        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.grey, size: 24.sp)
            : null,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: AppColors.primary, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: AppColors.primary, width: 1.w),
        ),
      ),
    );
  }
}
