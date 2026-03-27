import 'package:CraftyBay/app/routes/routes.dart';
import 'package:CraftyBay/app/views/widgets/category_card.dart';
import 'package:CraftyBay/app/views/widgets/product_card.dart';
import 'package:CraftyBay/app/views/widgets/product_carousel.dart';
import 'package:CraftyBay/app/views/widgets/text_input_widget_with_icon.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextInputWidgetWithIcon(
                  hintText: "Search",
                  prefixIcon: Icons.search,
                ),
                SizedBox(height: 12.h),
                ProductCarousel(),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Categories",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepGrey,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryCard(icon: Icons.tv, title: "Electronics"),
                      SizedBox(width: 12.w),
                      CategoryCard(icon: Icons.restaurant, title: "Food"),
                      SizedBox(width: 12.w),
                      CategoryCard(icon: Icons.chair, title: "Furniture"),
                      SizedBox(width: 12.w),
                      CategoryCard(icon: Icons.book, title: "Books"),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepGrey,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                        onTap: () {
                          Get.toNamed(AppRoutes.productScreen);
                        },
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepGrey,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepGrey,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                      ProductCard(
                        image: 'assets/images/sample.png',
                        title: 'Addidas Shoes',
                        price: "\$49.99",
                        rating: 0.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
