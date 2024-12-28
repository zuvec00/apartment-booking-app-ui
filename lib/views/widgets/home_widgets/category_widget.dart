// ignore_for_file: deprecated_member_use

import 'package:apartment_booking_app/constants/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  static final List<List<String>> categories = [
    ['Feature', 'assets/icons/features.svg'],
    ['Apartment', 'assets/icons/apartment.svg'],
    ['Igloo', 'assets/icons/igloo.svg'],
    ['Hotel', 'assets/icons/apartment.svg'],
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: 16.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? Utilities.primaryColor
                        : Utilities.neutralColor,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          index % 2 == 0 ? Radius.circular(5.r) : Radius.circular(24.r),
                      topRight:
                          index % 2 == 0 ? Radius.circular(24.r) : Radius.circular(5.r),
                      bottomLeft:
                          index % 2 == 0 ? Radius.circular(24.r) : Radius.circular(5.r),
                      bottomRight:
                          index % 2 == 0 ? Radius.circular(5.r) : Radius.circular(24.r),
                    ),
                  ),
                  child: SvgPicture.asset(
                    categories[index][1],
                    height: 32.h,
                    color: currentIndex == index
                        ? Utilities.neutralColor
                        : Utilities.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                categories[index][0],
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ],
          );
        });
  }
}
