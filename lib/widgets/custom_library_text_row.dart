import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constants.dart';

class CustomLibraryTextRow extends StatelessWidget {
  const CustomLibraryTextRow(
      {required this.titleText, required this.onpressed, super.key});
  final String titleText;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText!,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: onpressed!,
            child: Text(
              "View more",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
