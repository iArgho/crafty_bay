import 'package:CraftyBay/app/views/screens/auth/login_screen.dart';
import 'package:CraftyBay/app/views/screens/auth/otp_verifiaction_screen.dart';
import 'package:CraftyBay/app/views/screens/signup_screen.dart';
import 'package:CraftyBay/app/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static String splashScreen = "/splash-screen";
  static String loginScreen = "/login-screen";
  static String otpVerificationScreen = "/otp-verification-screen";
  static String signupScreen = "/signup-screen";
  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signupScreen, page: () => const SignupScreen()),
    GetPage(
      name: otpVerificationScreen,
      page: () => const OtpVerifiactionScreen(),
    ),
  ];
}
