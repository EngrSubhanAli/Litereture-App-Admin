import 'dart:async';

import 'package:flutter/material.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/utils/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () async {
      Navigator.pushNamed(context, RoutesName.signIn);
    });
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              width: 200.w,
              height: 200.h,
            ),
            CustomText(
              text: "LITERATURE.AI",
              fontSize: 22.sp,
              color: blackColor,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
