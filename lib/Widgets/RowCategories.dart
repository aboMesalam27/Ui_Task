import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/Themes/Colors.dart';

class RowCategories extends StatelessWidget {
  const RowCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildSubCategories(
            iconData: Icons.category_outlined,
            colorIcon: Colors.purple.shade400,
            text: 'Categories'),
        buildSubCategories(
            iconData: Icons.compare,
            colorIcon: Colors.purple.shade400,
            text: 'Compare'),
        buildSubCategories(
            iconData: Icons.format_paint,
            colorIcon: Colors.purple.shade400,
            text: 'Soles event'),
        buildSubCategories(
            iconData: Icons.local_offer,
            colorIcon: Colors.orangeAccent.shade400,
            text: 'Offers'),
      ],
    );
  }
}

Widget buildSubCategories({
  required IconData iconData,
  required Color colorIcon,
  required String text,
}) {
  return Column(
    children: [
      Card(
        elevation: 1,
        color: secondColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 15.0.h,horizontal: 17.0.w,),
          child: Icon(
            iconData,
            color: colorIcon,
          ),
        ),
      ),
      Text(text)
    ],
  );
}
