import 'package:flutter/material.dart';

class CustomPrefrencesQuestionText extends StatelessWidget {
  const CustomPrefrencesQuestionText({
    required this.text,
    super.key,
  });
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(text!,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'IBMPlexSans')),
      ),
    );
  }
}
