import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/specific_category_container.dart';

class SpecificCategoryScreen extends StatefulWidget {
  const SpecificCategoryScreen({super.key});
  static String id = "SpecificCategoryScreen";

  @override
  State<SpecificCategoryScreen> createState() => _SpecificCategoryScreenState();
}

class _SpecificCategoryScreenState extends State<SpecificCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: CustomPrefrencesRow(onpressed: () {}, text: "Search"),
              ),
              Container(
                height: 48.h,
                width: 343.w,
                margin: EdgeInsets.symmetric(vertical: 16.h),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Discover',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: primaryColor, width: 2.w),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                          color: const Color(0xff333333), width: 1.w),
                    ),
                    hintStyle: TextStyle(
                        color: const Color(0xff666666), fontSize: 14.sp),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(4.r),
                      width: 20.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4.r)),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The biography",
                    style: TextStyle(),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, index) {
                    return const SpecificCategoryContainer(
                      buttonText: 'Add to list',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
