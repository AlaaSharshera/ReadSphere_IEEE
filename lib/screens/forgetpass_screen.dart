import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/otp_screen.dart';
import 'package:readsphere_ieee/widgets/custom_login_text.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class ForgetpassScreen extends StatefulWidget {
  const ForgetpassScreen({super.key});
  static String id = 'ForgetpassScreen';

  @override
  State<ForgetpassScreen> createState() => _ForgetpassScreenState();
}

class _ForgetpassScreenState extends State<ForgetpassScreen> {
  final formKey = GlobalKey<FormState>();
  bool isloading = false;

  final TextEditingController controller = TextEditingController();

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
                            onpressed: () {}, text: 'Forgot password'),
                      ),
                      const CustomLoginText(
                        text:
                            "Enter your email or number to reset  your\n password",
                      ),
                      CustomTextFormField(
                          inputType: TextInputType.emailAddress,
                          hintText: 'alaaahmed@gmail.com',
                          obscureText: false,
                          onChanged: (data) {},
                          width: 343.w,
                          height: 60.h,
                          controller: controller,
                          errorMessage: 'E-mail',
                          textStyle: const TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomButton(
                        onpressed: () {
                          Navigator.pushNamed(context, OtpScreen.id);
                        },
                        buttonColor: primaryColor,
                        borderColor: primaryColor,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'IBMPlexSans'),
                        buttonText: 'Reset Password',
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
