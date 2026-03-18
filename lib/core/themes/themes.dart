import 'package:CraftyBay/app/routes/routes.dart';
import 'package:CraftyBay/core/constants/language/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'CraftyBay',
          translations: Language(),
          locale: const Locale('en', 'US'), //default locale
          fallbackLocale: const Locale('en', 'US'),
          theme: ThemeData(
            primaryColor: const Color(0xFF07ADAE),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white,
            //fontFamily: 'Inter',
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: const Color(0xFFFFFFFF),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 14.h,
              ),
            ),
          ),
          initialRoute: AppRoutes.splashScreen,
          getPages: AppRoutes.pages,
          onInit: () {},
        );
      },
    );
  }
}
