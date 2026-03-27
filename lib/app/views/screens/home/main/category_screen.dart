import 'package:CraftyBay/app/views/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {"icon": Icons.tv, "title": "Electronics"},
      {"icon": Icons.restaurant, "title": "Food"},
      {"icon": Icons.chair, "title": "Furniture"},
      {"icon": Icons.book, "title": "Books"},
      {"icon": Icons.watch, "title": "Gadgets"},
      {"icon": Icons.tv, "title": "Electronics"},
      {"icon": Icons.restaurant, "title": "Food"},
      {"icon": Icons.chair, "title": "Furniture"},
      {"icon": Icons.book, "title": "Books"},
      {"icon": Icons.watch, "title": "Gadgets"},
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              return CategoryCard(
                icon: categories[index]["icon"] as IconData,
                title: categories[index]["title"] as String,
              );
            },
          ),
        ),
      ),
    );
  }
}
