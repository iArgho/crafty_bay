import 'package:CraftyBay/app/routes/routes.dart';
import 'package:CraftyBay/app/views/widgets/text_button_widget.dart';
import 'package:CraftyBay/app/views/widgets/text_input_widget.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              SvgPicture.asset('assets/logos/logo.svg', width: 140.w),
              SizedBox(height: 20.h),
              Text(
                'welcomeBack'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepGrey,
                ),
              ),
              SizedBox(height: 4.h),

              /// Email
              Text(
                'enterEmail'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(height: 16.h),
              InputField(
                hintText: 'email'.tr,
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 16.h),

              /// Login button
              TextWidgetButton(
                text: 'next'.tr,
                onPressed: () {
                  Get.toNamed(AppRoutes.otpVerificationScreen);
                },
              ),

              SizedBox(height: 16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('noAccount'.tr, style: TextStyle(fontSize: 12.sp)),
                  SizedBox(width: 6.w),
                  TextButton(
                    onPressed: () {
                      // Get.toNamed(AppRoutes.otpVerificationScreen);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'signUp'.tr,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
