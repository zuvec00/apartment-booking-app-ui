import 'package:apartment_booking_app/views/screens/screen_routes/home_routes/property_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PropertyCardWidget extends StatelessWidget {
  const PropertyCardWidget({super.key});

  static final List<List<String>> propertyData = [
    ['assets/images/property1.jpg', 'Mobile Home', '4.95'],
    ['assets/images/property2.jpg', 'Manufactured Home', '4.65'],
    ['assets/images/property3.jpg', 'Living Roof', '4.95'],
    ['assets/images/property1.jpg', 'Mobile Home', '4.95'],
    ['assets/images/property2.jpg', 'Manufactured Home', '4.95'],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: propertyData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PropertyDescription(
                      imagePath: propertyData[index][0],
                      propertyName: propertyData[index][1],
                      propertyRating: propertyData[index][2],
                    );
                  },
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16.w),
                  height: 225.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(80.r),
                      bottomLeft: Radius.circular(24.r),
                      bottomRight: Radius.circular(24.r),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        propertyData[index][0],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  propertyData[index][1],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/star.svg',
                      height: 16.h,
                      color: Colors.amberAccent,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      propertyData[index][2],
                      style: TextStyle(fontSize: 14.sp),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }
}
