import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextButtonInvertWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TextButtonInvertWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: 100.w,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: AppColors.surface,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
