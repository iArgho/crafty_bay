import 'package:CraftyBay/app/views/widgets/product_details_carousel.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/sample.png',
      'assets/images/sample.png',
      'assets/images/sample.png',
      'assets/images/sample.png',
      'assets/images/sample.png',
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "Product Details",
          style: TextStyle(color: AppColors.deepGrey, fontSize: 18.sp),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppColors.surface,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProductDetailsCarousel(images: images),

                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
