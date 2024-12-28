import 'package:apartment_booking_app/constants/utilities.dart';
import 'package:apartment_booking_app/views/screens/main_screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          fontFamily: 'HelveticaNeue',
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: Utilities.primaryColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
