import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/congrats_screen.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/customcheckbox_list.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class PrefrencesPage6 extends StatefulWidget {
  PrefrencesPage6({super.key});

  @override
  State<PrefrencesPage6> createState() => _PrefrencesPage6State();
}

class _PrefrencesPage6State extends State<PrefrencesPage6> {
  List<bool> isCheckedPage6 = List.generate(9, (index) => false);

  final List<String> page6Texts = [
    'Fiction',
    'Mystery',
    'Science Fiction (Sci-Fi)',
    'Fantasy',
    'History',
    'Biography',
    'Poetry',
    'Drama',
    'Adventure'
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
              text: 'Choose the types of\n books you prefer',
            ),
            CustomcheckboxList(
              isChecked: isCheckedPage6,
              texts: page6Texts,
              onSelectedOptionsChanged: (p0) {
                setState(() {
                  selectedAnswers = p0;
                });
              },
            ),
            const Spacer(flex: 1),
            CustomButton(
                onpressed: () {
                  Navigator.pushNamed(context, PreferencesCongratsScreen.id);
                },
                buttonColor: primaryColor,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Finish',
                borderColor: primaryColor),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
