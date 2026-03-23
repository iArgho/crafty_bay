import 'package:CraftyBay/app/views/widgets/text_button_invert_widget.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

CarouselSlider ProductCarousel() {
  return CarouselSlider(
    options: CarouselOptions(height: 140.h),
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Image.asset(
                    'assets/images/sample.png',
                    height: 80.h,
                    fit: BoxFit.contain,
                  ),
                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Happy New Year Special Deal Save 30%',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8.h),
                      TextButtonInvertWidget(text: "Buy Now", onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }).toList(),
  );
}
