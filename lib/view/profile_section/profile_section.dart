import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/app_button.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/Components/textfield_container.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/models/post_data_model.dart';

import 'package:literature_app_admin/view/mian_screen/main_header_all_sections.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/view/stories_section/reported_story_item.dart';
import 'package:literature_app_admin/view/stories_section/storyitem.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _inputValue;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: whiteColor,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                  right: 10.w,
                  bottom: 20.h,
                  top: 20.h,
                ),
                child: SizedBox(
                  width: 100.w,
                  child: CustomText(
                    text: "Profile",
                    fontSize: 24.sp,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            VerticalSizedBox(vertical: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 60.sp),
              child: Row(
                children: [
                  Image.asset(
                    profil2,
                    height: 160.h,
                    width: 160.w,
                  ),
                  HorizontalSizedBox(horizontalSpace: 20.sp),
                  Column(
                    children: [
                      SizedBox(
                        width: 0.5.sw,
                        child: CustomText(
                          text: "Tynisha Obey",
                          // textAlign: TextAlign.start,
                          fontSize: 50.sp,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 0.48.sw,
                        child: CustomText(
                          text: "Tynishaobey@gmail.com",
                          fontSize: 24.sp,
                          color: blackColor.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            VerticalSizedBox(vertical: 70.h),
            Padding(
              padding: EdgeInsets.only(left: 70.sp),
              child: TextFieldContainer(
                title: "E-mail",
                placeholder: "johndoe@gmail.com",
                textController: emailController,
                obscure: false,
                validator: (value) {
                  if (RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value.toString()) ==
                      false) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
            ),
            VerticalSizedBox(vertical: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 70.sp),
              child: TextFieldContainer(
                title: "Password",
                validator: (value) {
                  if (value == null || value.trim().length < 8) {
                    return 'Password must contain 8 characters';
                  }

                  return null;
                },
                placeholder: "********************",
                textController: passController,
                suffixicon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: greyColor,
                ),
                obscure: true,
                prefixIcon: Icons.lock,
              ),
            ),
            VerticalSizedBox(vertical: 70.h),
            Padding(
              padding: EdgeInsets.only(left: 80.sp),
              child: const CustomGradientButton(buttonText: "Update"),
            ),
          ],
        ),
      ),
    );
  }
}
