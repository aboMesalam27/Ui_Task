import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/Themes/Colors.dart';
class SearchUi extends StatelessWidget {
  const SearchUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration:  InputDecoration(

            contentPadding: EdgeInsets.symmetric(
                horizontal: 10.w, vertical: 18.h,),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            prefixIcon: Icon(
              Icons.search,
              color: colorblack54,
            )),
      ),
    );
  }
}
