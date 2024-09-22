import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator(
      {super.key,
      required this.pageController,
      required this.count,
      required this.width});

  final PageController pageController;
  final int count;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: SmoothPageIndicator(
          controller: pageController,
          count: count,
          effect: SlideEffect(
              dotWidth: width.w,
              spacing: 5.w,
              dotColor: const Color(0xffDADADA),
              activeDotColor: primaryColor,
              dotHeight: 5.h),
        ),
      ),
    );
  }
}
