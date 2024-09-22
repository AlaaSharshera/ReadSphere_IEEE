import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/prefrence_page2.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_prefrencesscreens_text.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class PrefrencePage1 extends StatefulWidget {
  const PrefrencePage1({super.key});
  static String id = "PrefrencePage1";

  @override
  State<PrefrencePage1> createState() => _PrefrencePage1State();
}

class _PrefrencePage1State extends State<PrefrencePage1> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController ageController = TextEditingController();
  String selectedGender = '';

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
            text: 'about you',
          ),
          const CustomPrefrencesQuestionText(
            text: "select your gender",
          ),
          SizedBox(width: 20.w),
          Column(
            children: [
              CustomButton(
                onpressed: () {
                  selectedGender = "Male";
                  setState(() {});
                },
                borderColor: (selectedGender == 'Male')
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor:
                    (selectedGender == 'Male') ? primaryColor : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedGender == 'Male')
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                buttonText: "Male",
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(
                onpressed: () {
                  selectedGender = "Female";
                  setState(() {});
                },
                borderColor: (selectedGender == 'Female')
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor: (selectedGender == 'Female')
                    ? primaryColor
                    : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedGender == 'Male')
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                buttonText: "Female",
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("enter your age",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSans')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextFormField(
              controller: ageController,
              width: 343.w,
              height: 51.h,
              obscureText: false,
              hintText: "  ",
              textStyle: const TextStyle(
                  fontFamily: 'IBMPlexSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              errorMessage: "Please Enter your age",
              inputType: TextInputType.number,
              onChanged: (da) {},
            ),
          ),
          const Spacer(flex: 2),
          CustomButton(
              onpressed: () {},
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
