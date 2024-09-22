import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';

class CustomLogInButton extends StatelessWidget {
  const CustomLogInButton(
      {required this.onpressed, required this.buttonText, super.key});
  final VoidCallback? onpressed;

  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: const BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(secondaryColor),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Google.png'),
            SizedBox(
              width: 8.w,
            ),
            Text(
              buttonText!,
              style: TextStyle(
                  color: const Color(0xff333333),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
