import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/createaccount_screen.dart';
import 'package:readsphere_ieee/screens/forgetpass_screen.dart';
import 'package:readsphere_ieee/widgets/custom_divider.dart';
import 'package:readsphere_ieee/widgets/custom_login_button.dart';
import 'package:readsphere_ieee/widgets/custom_login_row.dart';
import 'package:readsphere_ieee/widgets/custom_login_text.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';

class WelcomebackScreen extends StatefulWidget {
  const WelcomebackScreen({super.key});
  static String id = 'welcomback';

  @override
  State<WelcomebackScreen> createState() => _WelcomebackScreenState();
}

class _WelcomebackScreenState extends State<WelcomebackScreen> {
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
                            onpressed: () {
                              Navigator.pop(context);
                            },
                            text: "Welcome Back!"),
                      ),
                      const CustomLoginText(
                        text: "User Name",
                      ),
                      CustomTextFormField(
                          inputType: TextInputType.name,
                          hintText: 'alaaahmed',
                          obscureText: false,
                          onChanged: (data) {},
                          width: 343.w,
                          height: 48.h,
                          controller: controller,
                          errorMessage: 'user name',
                          textStyle: const TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CustomLoginText(
                        text: "Password",
                      ),
                      CustomTextFormField(
                          inputType: TextInputType.visiblePassword,
                          hintText: '************',
                          obscureText: false,
                          onChanged: (data) {},
                          width: 343.w,
                          height: 48.h,
                          controller: controller,
                          errorMessage: 'password ',
                          textStyle: const TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, ForgetpassScreen.id);
                          },
                          child: Text(
                            "Forget Password ?",
                            style: GoogleFonts.ibmPlexSans(color: primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomButton(
                          onpressed: () {
                            if (formKey.currentState!.validate()) {
                              isloading = true;
                              setState(() {});

                              isloading = false;
                              setState(() {});
                            }
                          },
                          buttonColor: primaryColor,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'IBMPlexSans'),
                          buttonText: 'Log In',
                          borderColor: primaryColor),
                      const CustomDivider(),
                      CustomLogInButton(
                          onpressed: () {}, buttonText: 'Login with google'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: CustomLoginRow(
                            questionText: 'Don\'t have an account?',
                            text: 'Sign Up',
                            ontap: () {
                              Navigator.pushNamed(
                                  context, CreateaccountScreen.id);
                            }),
                      ),
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
