import 'package:apartment_booking_app/constants/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PropertyDescription extends StatelessWidget {
  final String imagePath;
  final String propertyName;
  final String propertyRating;
  const PropertyDescription(
      {super.key,
      required this.imagePath,
      required this.propertyName,
      required this.propertyRating});

  static final List<String> profileImages = [
    'assets/images/profile1.jpeg',
    'assets/images/profile2.jpeg',
    'assets/images/profile3.jpeg',
    'assets/images/profile4.jpeg',
    'assets/images/profile5.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilities.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(125.r)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/icons/arrow-left.svg'),
                        SvgPicture.asset('assets/icons/favourite.svg'),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 20.h,
                        color: Colors.amberAccent,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        propertyRating,
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  Text(propertyName,
                      style: TextStyle(
                        color: Utilities.headerColor,
                        fontFamily: 'ddicapslock',
                        fontSize: 48.sp,
                      )),
                  Row(
                    children: [
                      Text(
                        '2 guests',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        '1 bedrooms',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        '1 bathrooms',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 16.w, right: 24.w, top: 24.h, bottom: 24.h),
                    decoration: BoxDecoration(
                      color: Utilities.neutralColor,
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FlutterImageStack(
                              imageList: profileImages,
                              totalCount: profileImages.length,
                              itemRadius: 32.r,
                              itemCount: 5,
                              imageSource: ImageSource.asset,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            const Text(
                              '179 reviews',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Transform.flip(
                            flipX: true,
                            child: SvgPicture.asset(
                                'assets/icons/arrow-left.svg')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Text(
                    'The mobile house condenses its inhabitants needs and activities into a compact capsule.',
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$120/night',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '9-10 Jun.',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 48.w, right: 32.w, top: 24.h, bottom: 24.h),
                        decoration: BoxDecoration(
                            color: Utilities.primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80.r),
                              topRight: Radius.circular(16.r),
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r),
                            )),
                        child: const Text(
                          'Reserve',
                          style: TextStyle(
                              color: Utilities.backgroundColor,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
