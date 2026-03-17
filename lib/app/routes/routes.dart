import 'package:CraftyBay/app/views/screens/auth/login_screen.dart';
import 'package:CraftyBay/app/views/screens/auth/otp_verifiaction_screen.dart';
import 'package:CraftyBay/app/views/screens/auth/create_account_screen.dart';
import 'package:CraftyBay/app/views/screens/home/bottom_nav_screen.dart';
import 'package:CraftyBay/app/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static String splashScreen = "/splash-screen";
  static String loginScreen = "/login-screen";
  static String otpVerificationScreen = "/otp-verification-screen";
  static String createAccountScreen = "/create-account-screen";
  static String bottomNavScreen = "/bottom-nav-screen";
  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: createAccountScreen, page: () => const CreateAccountScreen()),
    GetPage(
      name: otpVerificationScreen,
      page: () => const OtpVerifiactionScreen(),
    ),
    GetPage(name: bottomNavScreen, page: () => const BottomNavScreen()),
  ];
}
