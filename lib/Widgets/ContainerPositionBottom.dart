import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/response/modelData.dart';

import '../Themes/Colors.dart';
import '../response/data.dart';
import 'defaultButton.dart';

class ContainerPositionBottom extends StatefulWidget {
  @override
  State<ContainerPositionBottom> createState() =>
      _ContainerPositionBottomState();
}

class _ContainerPositionBottomState extends State<ContainerPositionBottom>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0.w,
      right: 0.0.w,
      bottom: 0.0.h,
      child: AnimatedSize(
        vsync: this,
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 160),
        child: Container(
          height: 320.h,
          decoration: BoxDecoration(
            color: secondColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.0.r),
                topRight: Radius.circular(18.r)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 18.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'New Arrivals',
                      style: TextStyle(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    DefaultButton(
                      heightContainer: 35.h,
                      widthContainer: 100.w,
                      buttonColor: primaryColor,
                      raduis: 8.r,
                      textColor: colorWhite,
                      text: 'View All',
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                SizedBox(
                  height: 240.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: DataModel.dataModelRes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildCardCategories(index);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.w,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildCardCategories(index) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
    elevation: 5,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Container(
              color: secondColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: colorblack54,
                    ),
                  ),
                  CachedNetworkImage(
                    errorWidget: (context, url, error) => Icon(
                      Icons.error,
                      size: 60,
                      color: colorsRed,
                    ),
                    imageUrl: DataModel.dataModelRes[index].image,
                    height: 90.h,
                    width: 130.w,
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
                  ),
                ],
              ),
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15.r),
              topLeft: Radius.circular(15.r),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          SizedBox(
            width: 130.w,
            child: Text(
              DataModel.dataModelRes[index].title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: 90.w,
            height: 25.h,
            child: DefaultButton(
              heightContainer: 20.h,
              widthContainer: 30.w,
              text: 'Colors',
              textColor: Colors.grey.shade400,
              raduis: 7.r,
              buttonColor: secondColor,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 130.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$${DataModel.dataModelRes[index].price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: secondColor),
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.add,
                    color: colorblack,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
