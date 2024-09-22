import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:readsphere_ieee/constants.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_prefrencesscreens_text.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class PrefrencesPage3 extends StatefulWidget {
  const PrefrencesPage3({super.key});

  @override
  State<PrefrencesPage3> createState() => _PrefrencesPage3State();
}

class _PrefrencesPage3State extends State<PrefrencesPage3> {
  String selectedAnswer = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          CustomPrefrencesRow(
            onpressed: () {
              Get.back();
            },
            text: 'commit to growing with\n read sphere',
          ),
          const CustomPrefrencesQuestionText(
            text: "you will be 5x more likly to reach set goals!",
          ),
          SizedBox(width: 20.w),
          Column(
            children: [
              CustomButton(
                onpressed: () {
                  selectedAnswer = "7-day streak";
                  setState(() {});
                },
                borderColor: (selectedAnswer == '7-day streak')
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor: (selectedAnswer == '7-day streak')
                    ? primaryColor
                    : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedAnswer == '7-day streak')
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                buttonText: "7-day streak",
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(
                onpressed: () {
                  selectedAnswer = "14-day streak";
                  setState(() {});
                },
                borderColor: (selectedAnswer == "14-day streak")
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor: (selectedAnswer == "14-day streak")
                    ? primaryColor
                    : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedAnswer == "14-day streak")
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                buttonText: "14-day streak",
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(
                onpressed: () {
                  selectedAnswer = "30-day streak";
                  setState(() {});
                },
                borderColor: (selectedAnswer == "30-day streak")
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor: (selectedAnswer == "30-day streak")
                    ? primaryColor
                    : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedAnswer == 'Male')
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                buttonText: "30-day streak",
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(
                onpressed: () {
                  selectedAnswer = "50-day streak";
                  setState(() {});
                },
                borderColor: (selectedAnswer == "50-day streak")
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor: (selectedAnswer == "50-day streak")
                    ? primaryColor
                    : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedAnswer == "50-day streak")
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                buttonText: "50-day streak",
              ),
            ],
          ),
          const Spacer(flex: 2),
          CustomButton(
              onpressed: () {
                print(selectedAnswer);
              },
              buttonColor: primaryColor,
              textStyle: const TextStyle(
                  color: Colors.white, fontSize: 16, fontFamily: 'IBMPlexSans'),
              buttonText: 'Continue',
              borderColor: primaryColor),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
