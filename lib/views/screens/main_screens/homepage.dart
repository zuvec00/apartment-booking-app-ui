import 'package:apartment_booking_app/constants/utilities.dart';
import 'package:apartment_booking_app/views/screens/components/search_box.dart';
import 'package:apartment_booking_app/views/widgets/home_widgets/category_widget.dart';
import 'package:apartment_booking_app/views/widgets/home_widgets/property_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilities.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Discover Your Place To Stay',
                      style: TextStyle(
                        color: Utilities.headerColor,
                        fontFamily: 'ddicapslock',
                        fontSize: 48.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      SvgPicture.asset(
                        'assets/icons/notification.svg',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              // search box
              const SearchBox(),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 120.h,
                child: const CategoryWidget(),
              ),
              SizedBox(
                height: 24.h,
              ),
              const Expanded(child: PropertyCardWidget())
            ],
          ),
        ),
      ),
    );
  }
}
