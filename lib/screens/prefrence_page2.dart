import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/widgets/customcheckbox_list.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_prefrencesscreens_text.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class PrefrencePage2 extends StatefulWidget {
  PrefrencePage2({super.key});
  static String id = "PrefrencePage2";

  @override
  State<PrefrencePage2> createState() => _PrefrencePage2State();
}

class _PrefrencePage2State extends State<PrefrencePage2> {
  List<bool> isCheckedPage2 = List.generate(7, (index) => false);

  final List<String> page2Texts = [
    'Increase productivity',
    'Have a successful career',
    'Be a better parent',
    'Become confident',
    'Achieve life balance',
    'Boost intelligence',
    'Develop healthy relationships'
  ];

  List<String>? selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            CustomPrefrencesRow(
              onpressed: () {
                Get.back();
              },
              text: 'what are your goals? ',
            ),
            const CustomPrefrencesQuestionText(
              text: "Choose up to 3 goals for more precise\n personalization",
            ),
            CustomcheckboxList(
              isChecked: isCheckedPage2,
              texts: page2Texts,
              onSelectedOptionsChanged: (p0) {
                setState(() {
                  selectedAnswers = p0;
                });
              },
            ),
            const Spacer(flex: 2),
            CustomButton(
                onpressed: () {
                  print(selectedAnswers);
                },
                buttonColor: primaryColor,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Continue',
                borderColor: primaryColor),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
