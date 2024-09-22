import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/prefrences_screens.dart';

import 'package:readsphere_ieee/widgets/custom_login_text.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  static String id = 'OtpScreen';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isloading,
        progressIndicator: const CircularProgressIndicator(
          color: Colors.green,
        ),
        dismissible: true,
        child: Scaffold(
          backgroundColor: secondaryColor,
          body: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: CustomPrefrencesRow(
                            onpressed: () {}, text: 'OTP Verification'),
                      ),
                      const CustomLoginText(
                        text:
                            "Please check your email alaa@gmail.com to\n see the verification code ",
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        borderWidth: 1.w,
                        fieldWidth: 74.w,
                        fieldHeight: 56.h,
                        borderColor: const Color(0xff666666),
                        enabledBorderColor: const Color(0xff666666),
                        focusedBorderColor: primaryColor,
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Verification Code"),
                                  content:
                                      Text('Code entered is $verificationCode'),
                                );
                              });
                        }, // end onSubmit
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomButton(
                        onpressed: () {
                          Navigator.pushNamed(context, PrefrencesScreens.id);
                        },
                        buttonColor: primaryColor,
                        borderColor: primaryColor,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'IBMPlexSans'),
                        buttonText: 'Verify',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
