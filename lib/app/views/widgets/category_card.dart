import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.sp),
      child: Column(
        children: [
          Container(
            width: 72.w,
            height: 72.h,
            decoration: BoxDecoration(
              color: AppColors.lightPrimary,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(icon, size: 40.sp, color: AppColors.primary),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
