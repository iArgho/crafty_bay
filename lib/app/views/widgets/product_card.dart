import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final double rating;
    final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w, bottom: 16.h),
      child: 
      Material( 
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12.r),
          onTap: onTap,
          child:
      Container(
        width: 120.w,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              blurRadius: 2.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.lightPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),

            SizedBox(height: 4.h),

            // Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepGrey,
                ),
              ),
            ),

            SizedBox(height: 4.h),

            // Price + Rating + Favorite
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),

                  Row(
                    children: [
                      Icon(Icons.star, size: 12.sp, color: Colors.amber),
                      SizedBox(width: 2.w),
                      Text(
                        rating.toString(),
                        style: TextStyle(fontSize: 9.sp, color: AppColors.grey),
                      ),
                    ],
                  ),

                  Icon(
                    Icons.favorite_border,
                    size: 14.sp,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),

            SizedBox(height: 6.h),
          ],
        ),
      ),
          ),
        ),
    );
  }
}