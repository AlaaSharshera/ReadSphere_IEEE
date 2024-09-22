import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';

import 'package:readsphere_ieee/screens/prefrence_page1.dart';
import 'package:readsphere_ieee/screens/prefrence_page2.dart';
import 'package:readsphere_ieee/screens/prefrences_page3.dart';
import 'package:readsphere_ieee/screens/prefrences_page4.dart';
import 'package:readsphere_ieee/screens/prefrences_page5.dart';
import 'package:readsphere_ieee/screens/prefrences_page6.dart';
import 'package:readsphere_ieee/widgets/custom_smooth_indicator.dart';

class PrefrencesScreens extends StatelessWidget {
  PrefrencesScreens({super.key});
  static String id = 'PrefrencesScreens';
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CustomSmoothPageIndicator(
                pageController: pageController,
                count: 6,
                width: 53.w,
              ),
              Expanded(
                  child: PageView(
                controller: pageController,
                children: [
                  const PrefrencePage1(),
                  PrefrencePage2(),
                  const PrefrencesPage3(),
                  PrefrencesPage4(),
                  const PrefrencesPage5(),
                  PrefrencesPage6(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
