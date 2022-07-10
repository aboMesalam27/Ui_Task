import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/Widgets/defaultButton.dart';
import 'package:untitled1/response/data.dart';

import '../Themes/Colors.dart';

class ContainerPositionStack extends StatefulWidget {
  @override
  State<ContainerPositionStack> createState() => _ContainerPositionStackState();
}

int currentIndex = 0;

class _ContainerPositionStackState extends State<ContainerPositionStack> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15.w,
      left: 15.w,
      top: 115.h,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorWhite,
            boxShadow: [
              BoxShadow(
                color: colorblack54,
                blurRadius: 6.r,
                spreadRadius: 1.r,
                offset: Offset(7.w, 7.h),
              )
            ]),
        height: 125.h,
        width: 300.w,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0.h,
                    horizontal: 8.0.w,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    height: 85.h,
                    width: 180.w,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        initialPage: 0,
                        onPageChanged: (index, _) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9.h,
                        aspectRatio: 2.0,
                      ),
                      itemCount: Data.images.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return CachedNetworkImage(
                          errorWidget: (context, url, error) => Icon(
                            Icons.error,
                            size: 60,
                            color: colorsRed,
                          ),
                          imageUrl: Data.images[index],
                          height: 100.h,
                          width: 150.w,
                          placeholder: (context, url) => SizedBox(
                            height: 30.h,
                            width: 30.w,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: primaryColor,
                                strokeWidth: 2.0.r,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: Data.images.map(
                    (image) {
                      int index = Data.images.indexOf(image);
                      return Container(
                        width: 8.0.w,
                        height: 8.0.h,
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0.h, horizontal: 2.0.w),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == index
                                ? primaryColor
                                : const Color.fromRGBO(0, 0, 0, 0.4)),
                      );
                    },
                  ).toList(), // this was the part the I had to add
                ),
              ],
            ),
            SizedBox(
              width: 4.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('introducing'),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    'Air Max 2090',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DefaultButton(
                  widthContainer: 100.w,
                  heightContainer: 30.h,
                  textColor: colorWhite,
                  buttonColor: colorblack,
                  raduis: 8.r,
                  text: 'Buy Now',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
