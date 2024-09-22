import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {required this.inputType,
      required this.hintText,
      required this.obscureText,
      required this.onChanged,
      required this.width,
      required this.height,
      required this.controller,
      required this.errorMessage,
      required this.textStyle,
      super.key});
  static String id = "CustomTextFormField";
  final TextInputType? inputType;
  final String? hintText;
  final bool? obscureText;
  final Function(String)? onChanged;
  final double? width;
  final double? height;
  final TextStyle? textStyle;

  final String? errorMessage;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!.w,
      height: height!.h,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText!,
        keyboardType: inputType,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.red, width: 2.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: primaryColor, width: 2.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: const Color(0xff666666), width: 1.w),
          ),
          hintText: hintText,
          hintStyle: textStyle,
          contentPadding: EdgeInsets.all(12.r),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter the $errorMessage';
          }
          return null;
        },
      ),
    );
  }
}
