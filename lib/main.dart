import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/screens/Home_Page.dart';

void main() {
  runApp(UiTask());
}

class UiTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          title: 'Ui Task',
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
