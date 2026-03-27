import 'package:CraftyBay/app/views/screens/home/main/cart/cart_screen.dart';
import 'package:CraftyBay/app/views/screens/home/main/category/category_screen.dart';
import 'package:CraftyBay/app/views/screens/home/main/home/home_screen.dart';
import 'package:CraftyBay/app/views/screens/home/main/wish/wish_screen.dart';
import 'package:CraftyBay/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishlistScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        automaticallyImplyLeading: false,
        elevation: 0,

        leadingWidth: 140.w,

        leading: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Center(
            child: SvgPicture.asset(
              'assets/logos/logo_nav.svg',
              height: 28.h, // 👈 better size for AppBar
              fit: BoxFit.contain,
            ),
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          ),
          SizedBox(width: 8.w), // 👈 spacing from edge
        ],
      ),

      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28.sp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, size: 28.sp),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 28.sp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 28.sp),
            label: 'Wishlist',
          ),
        ],
      ),
    );
  }
}
