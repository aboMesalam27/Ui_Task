import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/Themes/Colors.dart';

import 'Search.dart';

class ContainerPositionTop extends StatefulWidget {
  @override
  State<ContainerPositionTop> createState() => _ContainerPositionTopState();
}

class _ContainerPositionTopState extends State<ContainerPositionTop>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0.h,
      left: 0.0.w,
      right: 0.0.w,
      child: AnimatedSize(
        vsync: this,
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 160),
        child: Container(
          height: 190.h,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22.0.r),
                  bottomRight: Radius.circular(22.0.r)),
              boxShadow: [
                BoxShadow(
                    color: colorblack,
                    blurRadius: 6.r,
                    spreadRadius: 0.5.r,
                    offset: Offset(0.7.w, 0.7.h,))
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 47.h,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0.h,),
                  child: Text(
                    'SHOPIN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      color: colorWhite,
                    ),
                  ),
                ),
                const Spacer(),
                const SearchUi(),
                SizedBox(width: 10.w),
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.camera,
                    color: Colors.grey,
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
