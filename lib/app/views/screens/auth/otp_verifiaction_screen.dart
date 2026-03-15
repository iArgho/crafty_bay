import 'package:CraftyBay/app/views/widgets/text_button_widget.dart';
import 'package:CraftyBay/app/views/widgets/text_input_widget.dart'
    show InputField;
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60.h),
              SvgPicture.asset('assets/logos/logo.svg', width: 120.w),
              SizedBox(height: 20.h),
              Text(
                'enterOtp'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepGrey,
                ),
              ),
              SizedBox(height: 10.h),

              /// Email
              Text(
                'enterEmail'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
              ),

              /// Login button
              TextWidgetButton(
                text: 'next'.tr,
                onPressed: () {
                  // Handle login action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
