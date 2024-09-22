import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/widgets/custom_character_container.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class ChooseCharacterPage extends StatefulWidget {
  const ChooseCharacterPage({super.key});
  static String id = 'ChooseCharacter';

  @override
  _ChooseCharacterPageState createState() => _ChooseCharacterPageState();
}

class _ChooseCharacterPageState extends State<ChooseCharacterPage> {
  int selectedCharacter = -1;
  String selectedCharacterImage = '';

  void selectCharacter(int index, String assetPath) {
    setState(() {
      selectedCharacter = index;
      selectedCharacterImage = assetPath;
    });
  }

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
            CustomPrefrencesRow(
                onpressed: () {}, text: 'Choose your character!'),
            const Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CharacterWidget(
                  index: 0,
                  assetPath: 'assets/images/character1.svg',
                  isSelected: selectedCharacter == 0,
                  onTap: () {
                    selectCharacter(0, 'assets/images/character1.svg');
                  },
                ),
                CharacterWidget(
                  index: 1,
                  assetPath: 'assets/images/character2.svg',
                  isSelected: selectedCharacter == 1,
                  onTap: () {
                    selectCharacter(1, 'assets/images/character2.svg');
                  },
                ),
              ],
            ),
            SizedBox(height: 44.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CharacterWidget(
                  index: 2,
                  assetPath: 'assets/images/character3.svg',
                  isSelected: selectedCharacter == 2,
                  onTap: () {
                    selectCharacter(2, 'assets/images/character3.svg');
                  },
                ),
                CharacterWidget(
                  index: 3,
                  assetPath: 'assets/images/character4.svg',
                  isSelected: selectedCharacter == 3,
                  onTap: () {
                    selectCharacter(3, 'assets/images/character4.svg');
                  },
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            CustomButton(
                onpressed: () {},
                buttonColor: primaryColor,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Continue',
                borderColor: primaryColor),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
