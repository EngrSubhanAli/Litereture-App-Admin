import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:literature_app_admin/view/mian_screen/main_header_all_sections.dart';
import 'package:literature_app_admin/view/stories_section/storyitem.dart';
import 'package:literature_app_admin/view/user_detial_section/my_stories_item.dart';
import 'package:provider/provider.dart';

class UserDetialSection extends StatefulWidget {
  int index;
  UserDetialSection({super.key, required this.index});

  @override
  State<UserDetialSection> createState() => _UserDetialSectionState();
}

class _UserDetialSectionState extends State<UserDetialSection> {
  @override
  Widget build(BuildContext context) {
    final postprovider = Provider.of<PostItems>(context, listen: true);
    return Expanded(
      flex: 7,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomHeaderForAllSections(title: "Users"),
            VerticalSizedBox(vertical: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 10.sp),
              child: UserDetailHeadSection(index: postprovider.userIndex),
            ),
            // User Sories
            VerticalSizedBox(vertical: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 10.sp),
              child: Row(
                children: [
                  CustomText(
                    text: "Stories",
                    fontSize: 30.sp,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            SizedBox(
              // height: 0.55.sh,
              child: ListView.builder(
                itemCount: posts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return MyStoriesItem(
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserDetailHeadSection extends StatefulWidget {
  int index;
  UserDetailHeadSection({super.key, required this.index});

  @override
  State<UserDetailHeadSection> createState() => _UserDetailHeadSectionState();
}

class _UserDetailHeadSectionState extends State<UserDetailHeadSection> {
  @override
  Widget build(BuildContext context) {
    // final postprovider = Provider.of<PostItems>(context, listen: true);
    return Row(
      children: [
        Container(
          width: 0.33.sw,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(30.sp),
            border: Border.all(
              color: const Color(0xffDFDFDF),
            ),
          ),
          child: Column(
            children: [
              VerticalSizedBox(vertical: 40.h),
              Row(
                children: [
                  HorizontalSizedBox(horizontalSpace: 10.w),
                  Image.asset(
                    posts[widget.index].imageUrl,
                    height: 130.h,
                    width: 130.w,
                  ),
                  HorizontalSizedBox(horizontalSpace: 10.w),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 250.w,
                            child: CustomText(
                              text: posts[widget.index].name,
                              fontSize: 34.sp,
                              color: blackColor.withOpacity(0.8),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 250.w,
                            child: CustomText(
                              text: posts[widget.index].email!,
                              fontSize: 18.sp,
                              color: blackColor.withOpacity(0.8),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 250.w,
                        child: CustomText(
                          textAlign: TextAlign.start,
                          text: posts[widget.index].phone!,
                          fontSize: 14.sp,
                          color: blackColor.withOpacity(0.8),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              VerticalSizedBox(vertical: 40.h),
            ],
          ),
        ),
      ],
    );
  }
}
