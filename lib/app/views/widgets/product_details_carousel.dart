import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailsCarousel extends StatefulWidget {
  final List<String> images;

  const ProductDetailsCarousel({super.key, required this.images});

  @override
  State<ProductDetailsCarousel> createState() => _ProductDetailsCarouselState();
}

class _ProductDetailsCarouselState extends State<ProductDetailsCarousel> {
  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Carousel
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 200.h,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.images.map((image) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                gradient: LinearGradient(
                  colors: [AppColors.surface, AppColors.lightGrey],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(child: Image.asset(image, height: 150.h)),
            );
          }).toList(),
        ),

        /// Overlay Dots
        Positioned(
          bottom: 12.h,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(widget.images.length, (index) {
                  bool isActive = _currentIndex == index;
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      width: 10.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: isActive
                            ? AppColors.primary
                            : Colors.white.withOpacity(0.7),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
