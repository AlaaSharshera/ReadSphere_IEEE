import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/screens/welcomeback_screen.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_login_text.dart';
import 'package:readsphere_ieee/widgets/custom_login_button.dart';
import 'package:readsphere_ieee/widgets/custom_login_row.dart';
import 'package:readsphere_ieee/widgets/custom_divider.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/constants.dart';

class CreateaccountScreen extends StatefulWidget {
  const CreateaccountScreen({super.key});
  static String id = 'CreateaccountScreen';

  @override
  State<CreateaccountScreen> createState() => _CreateaccountScreenState();
}

class _CreateaccountScreenState extends State<CreateaccountScreen> {
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
                            text: "Create Account"),
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
                        text: "E-mail",
                      ),
                      CustomTextFormField(
                          inputType: TextInputType.emailAddress,
                          hintText: 'alaaahmed@gmail.com',
                          obscureText: false,
                          onChanged: (data) {},
                          width: 343.w,
                          height: 48.h,
                          controller: controller,
                          errorMessage: 'E-mail',
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
                      SizedBox(
                        height: 16.h,
                      ),
                      const CustomLoginText(
                        text: "Confirm Password",
                      ),
                      CustomTextFormField(
                          inputType: TextInputType.visiblePassword,
                          hintText: '************',
                          obscureText: false,
                          onChanged: (data) {},
                          width: 343.w,
                          height: 48.h,
                          controller: controller,
                          errorMessage: 'confirmmed password',
                          textStyle: const TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
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
                          buttonText: 'Create Account',
                          borderColor: primaryColor),
                      const CustomDivider(),
                      CustomLogInButton(
                          onpressed: () {}, buttonText: 'Continue with google'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: CustomLoginRow(
                            questionText: 'Have an account?',
                            text: 'LogIn',
                            ontap: () {
                              Navigator.pushNamed(
                                  context, WelcomebackScreen.id);
                            }),
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
