import 'package:flutter/material.dart';

import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CusotmAppBar extends StatelessWidget {
  Color color;
  String from;
  CusotmAppBar({super.key, required this.color, required this.from});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 65.h,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              size: 30.sp,
            ),
          ),
          const Spacer(),
          Image.asset(
            logo,
            height: 35.h,
            width: 55.w,
          ),
          HorizontalSizedBox(horizontalSpace: 5.w),
          CustomText(
            text: "LITERATURE.AI",
            fontSize: 17.sp,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
          const Spacer(),
          HorizontalSizedBox(horizontalSpace: 40.w),
        ],
      ),
    );
  }
}
