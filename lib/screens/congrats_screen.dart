import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/choosecharacter_page.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_prefrencesscreens_text.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class PreferencesCongratsScreen extends StatelessWidget {
  const PreferencesCongratsScreen({super.key});
  static String id = "PreferencesCongratsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            CustomPrefrencesRow(onpressed: () {}, text: 'Congrats!'),
            const CustomPrefrencesQuestionText(
                text:
                    'Book summaries you\'re\n interested in have been saved\n to the Library page!'),
            const Image(
              image: AssetImage('assets/images/completed.png'),
            ),
            const Spacer(
              flex: 2,
            ),
            CustomButton(
                onpressed: () {
                  Navigator.pushNamed(context, ChooseCharacterPage.id);
                },
                buttonColor: primaryColor,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Continue',
                borderColor: primaryColor),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
