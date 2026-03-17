import 'package:CraftyBay/app/routes/routes.dart';
import 'package:CraftyBay/app/views/widgets/text_button_widget.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// Add import for OTP Text Field package
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpVerifiactionScreen extends StatelessWidget {
  const OtpVerifiactionScreen({super.key});

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
                'enterOtp'.tr,
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
                'otpSent'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(height: 16.h),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 45.w,
                style: TextStyle(fontSize: 12.sp),
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                  // Inactive/Default state
                  borderColor: AppColors.primary,
                  enabledBorderColor: AppColors.grey,

                  focusBorderColor: AppColors.primary,
                ),
                onCompleted: (pin) {
                  // Logic here
                },
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
                  Text(
                    'This code will expire in',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    '120 Seconds',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              TextButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.createAccountScreen);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
