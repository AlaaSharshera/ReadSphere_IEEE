import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/screens/articles_screens.dart';
import 'package:readsphere_ieee/screens/choosecharacter_page.dart';
import 'package:readsphere_ieee/screens/congrats_screen.dart';
import 'package:readsphere_ieee/screens/createaccount_screen.dart';
import 'package:readsphere_ieee/screens/downloadsbooks_screen.dart';
import 'package:readsphere_ieee/screens/featuredbooks_screen.dart';
import 'package:readsphere_ieee/screens/forgetpass_screen.dart';
import 'package:readsphere_ieee/screens/library_screen.dart';
import 'package:readsphere_ieee/screens/otp_screen.dart';
import 'package:readsphere_ieee/screens/prefrence_page1.dart';
import 'package:readsphere_ieee/screens/prefrence_page2.dart';
import 'package:readsphere_ieee/screens/prefrences_screens.dart';
import 'package:readsphere_ieee/screens/search_category_screen.dart';
import 'package:readsphere_ieee/screens/specific_category_screen.dart';
import 'package:readsphere_ieee/screens/splash.dart';
import 'package:readsphere_ieee/screens/welcomeback_screen.dart';
import 'package:readsphere_ieee/screens/yourbookmarkes_sreen.dart';

void main() {
  runApp(const ReadSphere());
}

class ReadSphere extends StatelessWidget {
  const ReadSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SplashScreen.id: (context) => const SplashScreen(),
          PrefrencesScreens.id: (context) => PrefrencesScreens(),
          CreateaccountScreen.id: (context) => const CreateaccountScreen(),
          WelcomebackScreen.id: (context) => const WelcomebackScreen(),
          ForgetpassScreen.id: (context) => const ForgetpassScreen(),
          OtpScreen.id: (context) => const OtpScreen(),
          PrefrencePage1.id: (context) => const PrefrencePage1(),
          PrefrencePage2.id: (context) => PrefrencePage2(),
          PreferencesCongratsScreen.id: (context) =>
              const PreferencesCongratsScreen(),
          ChooseCharacterPage.id: (context) => const ChooseCharacterPage(),
          LibraryScreen.id: (context) => const LibraryScreen(),
          YourbookmarkesSreen.id: (context) => const YourbookmarkesSreen(),
          FeaturedbooksScreen.id: (context) => const FeaturedbooksScreen(),
          DownloadsbooksScreen.id: (context) => const DownloadsbooksScreen(),
          SpecificCategoryScreen.id: (context) =>
              const SpecificCategoryScreen(),
          SearchCategoryScreen.id: (context) => const SearchCategoryScreen(),
          ArticlesScreens.id: (context) => const ArticlesScreens(),
        },
        initialRoute: ArticlesScreens.id,
      ),
    );
  }
}
