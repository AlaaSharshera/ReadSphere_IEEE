import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:readsphere_ieee/constants.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/customcheckbox_list.dart';

import 'package:readsphere_ieee/widgets/custom_button.dart';

class PrefrencesPage4 extends StatefulWidget {
  PrefrencesPage4({super.key});
  static String id = "PrefrencesPage4";

  @override
  State<PrefrencesPage4> createState() => _PrefrencesPage4State();
}

class _PrefrencesPage4State extends State<PrefrencesPage4> {
  List<bool> isCheckedPage4 = List.generate(5, (index) => false);

  final List<String> page4Texts = [
    'after morning coffee',
    'while commuting',
    'during my lunch break',
    'before going to sleep',
    'any spare time',
  ];
  List<String>? selectedAnswers;

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
            text: 'when do you like to find\n out new ideas?',
          ),
          CustomcheckboxList(
            isChecked: isCheckedPage4,
            texts: page4Texts,
            onSelectedOptionsChanged: (p0) {
              setState(() {
                selectedAnswers = p0;
              });
            },
          ),
          Image.asset(
            'assets/images/newideaimage.png',
            height: 242.h,
            width: 242.w,
          ),
          CustomButton(
              onpressed: () {
                print(selectedAnswers);
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
