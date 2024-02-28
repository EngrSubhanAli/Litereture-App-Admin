// i
// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:literature_app_admin/Core/multiproviders_list/main_selected_index.dart';

// ignore: must_be_immutable
class CustomHeaderForAllSections extends StatelessWidget {
  String title;
  CustomHeaderForAllSections({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final mainSelectedIndexProvider = Provider.of<MainCurrentIndex>(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: whiteColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          bottom: 20.h,
          top: 20.h,
        ),
        child: Row(
          children: [
            HorizontalSizedBox(horizontalSpace: 15.w),
            SizedBox(
              width: 200.w,
              child: CustomText(
                text: title,
                fontSize: 24.sp,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              width: 250.w,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                color: const Color(0xffFAFAFA), // Light grey background color
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                cursorColor: baseColor,
                style: const TextStyle(color: baseColor),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: blackColor,
                    size: 20.sp,
                  ),
                  hintText: 'Search...',
                  hintStyle: const TextStyle(color: lightGrey),
                  border: InputBorder.none, // Hide the border
                ),
              ),
            ),
            const Spacer(),
            HorizontalSizedBox(horizontalSpace: 200.w),
            GestureDetector(
              onTap: () {
                mainSelectedIndexProvider.setIndex(3);
              },
              child: SizedBox(
                child: Row(
                  children: [
                    Image.asset(
                      profil2,
                      height: 48.h,
                      width: 48.w,
                    ),
                    HorizontalSizedBox(horizontalSpace: 10.w),
                    CustomText(
                      text: "Tynisha Obey",
                      fontSize: 16.sp,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
            HorizontalSizedBox(horizontalSpace: 15.w),
          ],
        ),
      ),
    );
  }
}
