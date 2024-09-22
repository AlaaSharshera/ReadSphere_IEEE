import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.onpressed,
      required this.buttonColor,
      required this.textStyle,
      required this.buttonText,
      required this.borderColor,
      super.key});
  final VoidCallback? onpressed;
  final Color? buttonColor;
  final String? buttonText;
  final Color? borderColor;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: borderColor!),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(buttonColor),
        ),
        onPressed: onpressed,
        child: Text(
          buttonText!,
          style: textStyle,
        ),
      ),
    );
  }
}
