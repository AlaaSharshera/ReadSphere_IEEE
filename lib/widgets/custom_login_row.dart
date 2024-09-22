import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constants.dart';

class CustomLoginRow extends StatelessWidget {
  const CustomLoginRow({
    required this.ontap,
    required this.questionText,
    required this.text,
    super.key,
  });
  final VoidCallback? ontap;
  final String? questionText;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText!,
          style: const TextStyle(fontSize: 16),
        ),
        TextButton(
          onPressed: ontap,
          child: Text(
            text!,
            style: const TextStyle(color: primaryColor, fontSize: 16),
          ),
        )
      ],
    );
  }
}
