import 'package:CraftyBay/app/views/widgets/text_input_widget_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextInputWidgetWithIcon(
                  hintText: "Search",
                  prefixIcon: Icons.search,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
