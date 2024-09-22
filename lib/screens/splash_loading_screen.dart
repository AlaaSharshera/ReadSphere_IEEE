import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/onboarding_screens.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreens()),
      );
    });

    return const Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      ),
    );
  }
}
