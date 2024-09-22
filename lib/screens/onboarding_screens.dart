import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/models/onboarding_screen_model.dart';
import 'package:readsphere_ieee/widgets/custom_onboarding_screen.dart';
import 'package:readsphere_ieee/widgets/custom_smooth_indicator.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});
  static String id = 'OnboardingScreens';

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  PageController pageController = PageController();
  List<OnBoargingScreenModel> onBoargingScreen = [
    OnBoargingScreenModel(
        image: 'assets/images/onboarding1.png',
        text:
            'Read, Evolve, Enjoy,\nEnhance your daily Streak and\n Make Reading a Habit!'),
    OnBoargingScreenModel(
        image: 'assets/images/onboarding2.png',
        text:
            'Boost your reading with daily\n challenges and personalized\n summaries just for you!'),
    OnBoargingScreenModel(
        image: 'assets/images/completed.png',
        text:
            'The more books you complete,\n the more your virtual\n character levels up!'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Column(
          children: [
            CustomSmoothPageIndicator(
              pageController: pageController,
              count: 3,
              width: 111.w,
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: onBoargingScreen.length,
                itemBuilder: (context, index) {
                  return CustomOnboardingScreen(
                    onBoargingScreenModel: onBoargingScreen[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
