import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/downloadsbooks_screen.dart';
import 'package:readsphere_ieee/screens/featuredbooks_screen.dart';
import 'package:readsphere_ieee/screens/yourbookmarkes_sreen.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:readsphere_ieee/widgets/custom_library_container.dart';
import 'package:readsphere_ieee/widgets/custom_library_text_row.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});
  static String id = "library-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Library"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CustomLibraryTextRow(
                titleText: "Your bookmarkes",
                onpressed: () {
                  Navigator.pushNamed(context, YourbookmarkesSreen.id);
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLibraryContainer(),
                  CustomLibraryContainer(),
                ],
              ),
              CustomLibraryTextRow(
                titleText: "Featured Books",
                onpressed: () {
                  Navigator.pushNamed(context, FeaturedbooksScreen.id);
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLibraryContainer(),
                  CustomLibraryContainer(),
                ],
              ),
              CustomLibraryTextRow(
                titleText: "Your downloads",
                onpressed: () {
                  Navigator.pushNamed(context, DownloadsbooksScreen.id);
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLibraryContainer(),
                  CustomLibraryContainer(),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomButton(
                  onpressed: () {},
                  buttonColor: primaryColor,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'IBMPlexSans'),
                  buttonText: 'Go premium',
                  borderColor: primaryColor),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
