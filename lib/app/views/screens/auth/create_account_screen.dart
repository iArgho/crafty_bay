import 'package:CraftyBay/app/routes/routes.dart';
import 'package:CraftyBay/app/views/widgets/text_button_widget.dart';
import 'package:CraftyBay/app/views/widgets/text_input_widget.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40.h),
              SvgPicture.asset('assets/logos/logo.svg', width: 140.w),
              SizedBox(height: 20.h),
              Text(
                'Complete Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepGrey,
                ),
              ),
              SizedBox(height: 4.h),

              Text(
                'Got started with us with your details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(height: 16.h),
              InputField(
                hintText: 'First Name',
                keyboardType: TextInputType.name,
              ),

              SizedBox(height: 16.h),
              InputField(
                hintText: 'Last Name',
                keyboardType: TextInputType.name,
              ),

              SizedBox(height: 16.h),
              InputField(
                hintText: 'Mobile Number',
                keyboardType: TextInputType.phone,
              ),

              SizedBox(height: 16.h),
              InputField(hintText: 'City', keyboardType: TextInputType.text),

              SizedBox(height: 16.h),
              InputField(
                hintText: 'Shipping Address',
                keyboardType: TextInputType.text,
                maxLines: 4,
              ),

              SizedBox(height: 16.h),

              TextWidgetButton(
                text: 'Complete',
                onPressed: () {
                  Get.toNamed(AppRoutes.bottomNavScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
