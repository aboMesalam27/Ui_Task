import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/Widgets/ContainerPositionBottom.dart';
import 'package:untitled1/Widgets/ContainerPositionTop.dart';
import 'package:untitled1/Widgets/ContainerPositionStac.dart';
import 'package:untitled1/Widgets/RowCategories.dart';
import 'package:untitled1/Widgets/Search.dart';
import 'package:untitled1/Widgets/defaultButton.dart';

import '../Themes/Colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 280,
              child: Stack(
                children: [
                  ContainerPositionTop(),
                   ContainerPositionStack(),
                ],
              ),
            ),
             Padding(
              padding:
                   EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 10.h),
              child:const RowCategories()
            ),
             SizedBox(
              height: 10.h,
            ),

             ContainerPositionBottom()

          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home,color: Colors.purple.shade800,),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.feed),
              label: 'Feed',
            ),
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cartArrowDown),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.message),
              label: 'Message',
            ),
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'User',
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.purple.shade900,
          onTap: (index) {
            _selectedIndex = index;
          },
        ),
      ),
    );
  }
}
