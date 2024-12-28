import 'package:apartment_booking_app/constants/utilities.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      backgroundColor: Utilities.neutralColor,
      borderRadius: BorderRadius.circular(32.r),
      prefixInsets: EdgeInsets.only(left: 24.w),
      suffixInsets: EdgeInsets.only(right: 32.w),
      padding: EdgeInsets.only(left: 16.w, top: 20.h, bottom: 20.h),
      prefixIcon: SvgPicture.asset(
        'assets/icons/search.svg',
        color: Utilities.primaryColor,
      ),
      suffixIcon: const Icon(
        FluentSystemIcons.ic_fluent_filter_filled,
        color: Utilities.primaryColor,
      ),
      suffixMode: OverlayVisibilityMode.always,
      placeholderStyle: TextStyle(
        color: Colors.grey[600],
        fontFamily: 'HelveticaNeue',
      
      ),
    );
  }
}
