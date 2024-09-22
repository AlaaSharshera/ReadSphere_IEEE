import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/models/onboarding_screen_model.dart';
import 'package:readsphere_ieee/screens/createaccount_screen.dart';
import 'package:readsphere_ieee/screens/welcomeback_screen.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOnboardingScreen extends StatefulWidget {
  const CustomOnboardingScreen(
      {required this.onBoargingScreenModel, super.key});
  static String id = "onboarding";
  final OnBoargingScreenModel? onBoargingScreenModel;

  @override
  State<CustomOnboardingScreen> createState() => _CustomOnboardingScreenState();
}

class _CustomOnboardingScreenState extends State<CustomOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 57.h,
          ),
          SizedBox(
            height: 112.h,
            width: 343.w,
            child: Column(
              children: [
                Text(
                    textAlign: TextAlign.center,
                    widget.onBoargingScreenModel!.text!,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(
            height: 71.5.h,
          ),
          Image(
            image: AssetImage(widget.onBoargingScreenModel!.image!),
            width: 343.w,
            height: 269.h,
          ),
          SizedBox(
            height: 73.5.h,
          ),
          CustomButton(
            onpressed: () {
              Navigator.pushNamed(context, WelcomebackScreen.id);
            },
            buttonColor: primaryColor,
            textStyle:
                GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 16.sp),
            borderColor: primaryColor,
            buttonText: "Log In ",
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomButton(
            onpressed: () {
              Navigator.pushNamed(context, CreateaccountScreen.id);
            },
            buttonColor: Colors.white,
            borderColor: primaryColor,
            textStyle:
                GoogleFonts.ibmPlexSans(color: Colors.black, fontSize: 16.sp),
            buttonText: 'Create Account ',
          ),
        ],
      ),
    );
  }
}
